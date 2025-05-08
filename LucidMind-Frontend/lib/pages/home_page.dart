import 'package:over_react/over_react.dart';
import '../components/header.dart';
import '../components/check_in_modal.dart';

part 'home_page.over_react.g.dart';

UiFactory<HomePageProps> HomePage = castUiFactory(_$HomePage);
UiFactory<DomProps> Button = castUiFactory(Dom.button);

mixin HomePageProps on UiProps {
  String? name;
  void Function(String, String, String)? setUser;
}

class HomePageComponent extends UiComponent2<HomePageProps> {
  @override
  get initialState => {
    'showModal': false,
  };

  void _toggleModal() {
    print("Toggling modal: ${state['showModal']}");
    setState({
      'showModal': !state['showModal'],
    });
  }

  @override
  render() {
    var modal;
    if (state['showModal']) {
      modal = (CheckInModal()
        ..onClose = _toggleModal
      )();
    }
    
    return (Dom.div()
      ..style = {
        'display': 'flex',
        'flexDirection': 'column',
        'minHeight': '100vh',
        'padding': '20px',
        'position': 'relative',
      }
    )(
      (Header()
        ..name = props.name
        ..setUser = props.setUser
      )(),
      (Dom.div()
        ..className = 'content'
        ..style = {
          'flex': '1',
          'display': 'flex',
          'alignItems': 'center',
          'justifyContent': 'center',
          'flexDirection': 'column',
          'position': 'relative',
        }
      )(
        (Button()
          ..onClick = (_) { 
            _toggleModal(); 
          }
          ..style = {
            'backgroundColor': 'transparent',
            'border': 'none',
            'borderRadius': '4px',
            'padding': '10px 20px',
            'fontSize': '1.2rem',
            'cursor': 'pointer',
            'display': 'flex',
            'alignItems': 'center',
            'justifyContent': 'center',
            'flexDirection': 'column',
            'gap': '10px',
            'boxShadow': '0 2px 10px rgba(0,0,0,0.5)',
          }
        )(
          (Dom.i()
            ..className = 'fas fa-circle-plus'
            ..style = {
              'fontSize': '3rem',
              'color': 'white',
            })(),
          (Dom.h4()
            ..style = {
              'margin': '0',
              'fontSize': '1.5rem',
              'color': 'white',
            }
          )('Check In'),
        ),
      ),

      // Render the modal if it is open
      modal,
    );
  }
}
