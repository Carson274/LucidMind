import 'package:over_react/over_react.dart';
import '../components/header.dart';
import '../components/check_in_modal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'home_page.over_react.g.dart';

UiFactory<HomePageProps> HomePage = castUiFactory(_$HomePage);
UiFactory<DomProps> Button = castUiFactory(Dom.button);

mixin HomePageProps on UiProps {
  String? name;
  void Function(String, String, String)? setUser;
}

class HomePageComponent extends UiComponent2<HomePageProps> {
  // Helper function to build the moods list
  dynamic _buildMoodsList(List<Map<String, dynamic>> moods) {
    if (moods.isEmpty) {
      return (Dom.div()
        ..className = 'moods-list'
      )(
        (Dom.div()
          ..className = 'moods-empty'
        )('No mood entries yet. Click "Check In" to add your first entry!')
      );
    }

    // Build list of mood widgets
    final moodWidgets = <dynamic>[];
    for (var mood in moods) {
      final moodValue = mood['mood'] as int;
      final description = mood['description'] as String;
      final timestamp = mood['timestamp'] as Map<String, dynamic>;
      final userId = mood['userId'] as String;
      final isCurrentUser = userId.isNotEmpty && userId != 'user id goes here';
      
      final moodWidget = (Dom.div()
        ..key = '${timestamp['seconds']}_${timestamp['nanos']}'
        ..className = 'mood-entry'
      )(
        (Dom.div()
          ..className = 'mood-header'
        )(
          (Dom.div()
            ..className = 'mood-info'
          )(
            (Dom.div()
              ..className = 'mood-badge ${_getMoodClass(moodValue)}'
            )('$moodValue - ${_getMoodLabel(moodValue)}'),
            
            isCurrentUser ? 
              (Dom.span()
                ..className = 'user-badge'
              )('You') : null,
          ),
          
          (Dom.span()
            ..className = 'mood-timestamp'
          )(_formatTimestamp(timestamp)),
        ),
        
        description.isNotEmpty && description != '....' ? 
          (Dom.p()
            ..className = 'mood-description'
          )(description) : null,
      );
      
      moodWidgets.add(moodWidget);
    }

    return (Dom.div()
      ..className = 'moods-list'
    )(moodWidgets);
  }

  get initialState => {
    'showModal': false,
    'moods': <Map<String, dynamic>>[],
    'isLoadingMoods': false,
    'moodsError': null,
  };

  @override
  void componentDidMount() {
    _fetchMoods();
  }

  // Function to fetch mood data from the API
  void _fetchMoods() async {
    setState({'isLoadingMoods': true, 'moodsError': null});

    try {
      final url = Uri.parse('http://localhost:8040/moods');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        
        if (jsonData['success'] == true && jsonData['data'] != null) {
          final List<dynamic> moodsData = jsonData['data'];
          
          // Convert the data to a more usable format
          final List<Map<String, dynamic>> processedMoods = moodsData.map((moodItem) {
            return {
              'userId': moodItem['userId'] ?? '',
              'mood': moodItem['mood'] ?? 0,
              'description': moodItem['description'] ?? '',
              'timestamp': moodItem['timestamp'] ?? {},
            };
          }).toList();
          
          setState({
            'moods': processedMoods,
            'isLoadingMoods': false,
          });
          
          print('Moods fetched successfully: ${processedMoods.length} entries');
        } else {
          setState({
            'isLoadingMoods': false,
            'moodsError': 'Invalid response format'
          });
        }
      } else {
        setState({
          'isLoadingMoods': false,
          'moodsError': 'Failed to fetch moods (${response.statusCode})'
        });
      }
    } catch (e) {
      print('Error fetching moods: $e');
      setState({
        'isLoadingMoods': false,
        'moodsError': 'Connection error: $e'
      });
    }
  }

  void _toggleModal() {
    print("Toggling modal: ${state['showModal']}");
    setState({
      'showModal': !state['showModal'],
    });
  }

  void _onModalClose() {
    _toggleModal();
    // Refresh moods after a new entry is added
    _fetchMoods();
  }

  // Helper function to format timestamp
  String _formatTimestamp(Map<String, dynamic> timestamp) {
    if (timestamp['seconds'] == null) return 'Unknown time';
    
    try {
      final seconds = timestamp['seconds'] as int;
      final date = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
      return '${date.month}/${date.day}/${date.year} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
    } catch (e) {
      return 'Invalid time';
    }
  }

  // Helper function to get CSS class based on mood value
  String _getMoodClass(int mood) {
    if (mood < 2) return 'mood-very-low';
    if (mood < 4) return 'mood-low';
    if (mood < 6) return 'mood-neutral';
    if (mood < 8) return 'mood-good';
    return 'mood-great';
  }

  // Helper function to get mood label
  String _getMoodLabel(int mood) {
    if (mood < 2) return 'Very Low';
    if (mood < 4) return 'Low';
    if (mood < 6) return 'Neutral';
    if (mood < 8) return 'Good';
    return 'Great';
  }

  @override
  render() {
    final moods = state['moods'] as List<Map<String, dynamic>>;
    final isLoadingMoods = state['isLoadingMoods'] as bool;
    final moodsError = state['moodsError'];
    
    var modal;
    if (state['showModal']) {
      modal = (CheckInModal()
        ..onClose = _onModalClose
      )();
    }
    
    return (Dom.div()
      ..className = 'home-page'
    )(
      (Header()
        ..name = props.name
        ..setUser = props.setUser
      )(),
      
      (Dom.div()
        ..className = 'home-content'
      )(
        // Check In Button
        (Button()
          ..onClick = (_) { 
            _toggleModal(); 
          }
          ..className = 'check-in-button'
        )(
          (Dom.i()
            ..className = 'fas fa-circle-plus check-in-icon'
          )(),
          (Dom.h4()
            ..className = 'check-in-title'
          )('Check In'),
        ),

        // Moods Display Section
        (Dom.div()
          ..className = 'moods-container'
        )(
          (Dom.h2()
            ..className = 'moods-title'
          )('Recent Mood Entries'),

          // Loading state
          isLoadingMoods ? 
            (Dom.div()
              ..className = 'loading-state'
            )('Loading moods...') : null,

          // Error state
          moodsError != null ? 
            (Dom.div()
              ..className = 'error-state'
            )('Error: $moodsError') : null,

          // Moods list
          !isLoadingMoods && moodsError == null ? 
            _buildMoodsList(moods) : null,
        ),
      ),

      // Render the modal if it is open
      modal,
    );
  }
}