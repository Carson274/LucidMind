
import 'package:over_react/over_react.dart';
import '../components/slider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'check_in_modal.over_react.g.dart';

@Factory()
UiFactory<CheckInModalProps> CheckInModal = _$CheckInModal;
UiFactory<DomProps> Button = castUiFactory(Dom.button);

@Props()
mixin CheckInModalProps on UiProps {
  void Function()? onClose;
}

@Component2()
class CheckInModalComponent extends UiComponent2<CheckInModalProps> {
  @override
  get initialState => {
    'sliderValue': 50,
    'isSubmitting': false,
    'submitError': null,
  };

  // Function to get a color based on slider value
  String _getColorForValue(int value) {
    if (value < 2) return '#FF3D00'; // Red for very low
    if (value < 4) return '#FF9800'; // Orange for low
    if (value < 6) return '#F2FF5A'; // Yellow for neutral
    if (value < 8) return '#8BC34A'; // Light green for good
    return '#4CAF50'; // Green for great
  }

  // Function to send the POST request
  void _sendMoodData(int moodValue) async {
    // Set loading state
    setState({'isSubmitting': true, 'submitError': null});

    try {
      // Correctly construct the URI
      final url = Uri.parse('http://localhost:8040/moods');
      
      // Create the request payload
      final payload = {
        'mood': moodValue,
        'description': "Mood check-in",
      };

      // Send the request
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(payload),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Mood data sent successfully');
        // Close the modal on success
        if (props.onClose != null) props.onClose!();
      } else {
        print('Failed to send mood data: ${response.statusCode}');
        setState({
          'isSubmitting': false, 
          'submitError': 'Server error (${response.statusCode})'
        });
      }
    } catch (e) {
      print('Error sending mood data: $e');
      setState({
        'isSubmitting': false, 
        'submitError': 'Connection error: $e'
      });
    }
  }

  @override
  render() {
    final sliderValue = state['sliderValue'] as int;
    final isSubmitting = state['isSubmitting'] as bool;
    final submitError = state['submitError'];
    final color = _getColorForValue(sliderValue);
    
    return (Dom.div()
      ..style = {
        'display': 'flex',
        'flexDirection': 'column',
        'alignItems': 'center',
        'justifyContent': 'center',
        'background': '#2C2C2C',
        'height': '500px',
        'width': '400px',
        'borderRadius': '12px',
        'boxShadow': '0 8px 24px rgba(0,0,0,0.6)',
        'position': 'absolute',
        'top': '50%',
        'left': '50%',
        'transform': 'translate(-50%, -50%)',
        'zIndex': '100',
        'padding': '30px',
        'border': '1px solid rgba(255,255,255,0.1)',
      }
    )(
      (Dom.div()
        ..style = {
          'display': 'flex',
          'flexDirection': 'column',
          'alignItems': 'center',
          'marginBottom': '30px',
        }
      )(
        (Dom.div()
          ..style = {
            'color': 'white',
            'fontSize': '1.8rem',
            'fontWeight': 'bold',
            'textAlign': 'center',
          }
        )('How are you feeling today?'),
      ),
      
      // Slider component
      (Slider()
        ..min = 0
        ..max = 10
        ..value = sliderValue
        ..onSliderChange = (value) {
          setState({'sliderValue': value});
        }
      )(),
      
      // Mood indicator
      (Dom.div()
        ..style = {
          'marginTop': '20px',
          'color': color,
          'fontSize': '1.2rem',
          'fontWeight': 'bold',
        }
      )(
        _getMoodLabel(sliderValue)
      ),
      
      // Error message if any
      submitError != null ? 
        (Dom.div()
          ..style = {
            'color': '#FF3D00',
            'marginTop': '10px',
            'textAlign': 'center',
            'fontSize': '0.9rem',
          }
        )(submitError) : null,
      
      // Action buttons
      (Dom.div()
        ..style = {
          'marginTop': '40px',
          'display': 'flex',
          'justifyContent': 'space-between',
          'width': '100%',
          'maxWidth': '300px',
        }
      )(
        (Button()
          ..onClick = (_) {
            if (!isSubmitting && props.onClose != null) props.onClose!();
          }
          ..disabled = isSubmitting
          ..style = {
            'backgroundColor': 'rgba(255,255,255,0.1)',
            'color': 'white',
            'border': 'none',
            'padding': '12px 24px',
            'borderRadius': '8px',
            'cursor': isSubmitting ? 'default' : 'pointer',
            'opacity': isSubmitting ? '0.5' : '1',
            'fontSize': '1rem',
            'fontWeight': 'bold',
            'transition': 'background-color 0.2s',
          }
        )('Cancel'),
        
        (Button()
          ..onClick = (_) {
            if (!isSubmitting) _sendMoodData(sliderValue);
          }
          ..disabled = isSubmitting
          ..style = {
            'backgroundColor': color,
            'color': color == '#F2FF5A' ? '#333' : 'white', // Dark text on yellow
            'border': 'none',
            'padding': '12px 24px',
            'borderRadius': '8px',
            'cursor': isSubmitting ? 'default' : 'pointer',
            'fontSize': '1rem',
            'fontWeight': 'bold',
            'transition': 'background-color 0.2s',
            'boxShadow': '0 4px 8px rgba(0,0,0,0.2)',
            'display': 'flex',
            'alignItems': 'center',
            'justifyContent': 'center',
          }
        )(
          isSubmitting ? 
            'Saving...' : 
            'Save'
        ),
      ),
    );
  }
  
  // Helper function to get mood label based on value
  String _getMoodLabel(int value) {
    if (value < 2) return 'Very Low';
    if (value < 4) return 'Low';
    if (value < 6) return 'Neutral';
    if (value < 8) return 'Good';
    return 'Great';
  }
}