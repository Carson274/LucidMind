import 'package:over_react/over_react.dart';
import '../components/login_button.dart';
import '../firebase_auth_interop.dart';

part 'header.over_react.g.dart';

UiFactory<HeaderProps> Header = castUiFactory(_$Header);

// Props for the Header component
mixin HeaderProps on UiProps {
  String? name;
  void Function(String, String, String)? setUser;
}

class HeaderComponent extends UiComponent2<HeaderProps> {
  @override
  get initialState => {'showMenu': false};

  void _toggleMenu(_) {
    setState({'showMenu': !state['showMenu']});
  }

  void _signOut(_) {
    firebaseAuth.signOut();
    if (props.setUser != null) {
      props.setUser!('','','');
    }
    setState({'showMenu': false});
  }

  @override
  render() {
    final isSignedIn = props.name != null && props.name!.isNotEmpty;
    final showMenu = state['showMenu'] as bool;

    // Create the popup menu conditionally outside the tree
    var popupMenu;
    if (isSignedIn && showMenu) {
      popupMenu = (Dom.div()
        ..style = {
          'position': 'absolute',
          'top': '100%',
          'right': '0',
          'marginTop': '8px',
          'backgroundColor': '#2C2C2C',
          'padding': '12px',
          'borderRadius': '8px',
          'boxShadow': '0 2px 10px rgba(0,0,0,0.5)',
          'zIndex': '100',
        }
      )(
        (Dom.button()
          ..onClick = _signOut
          ..style = {
            'backgroundColor': '#FF3D00',
            'color': 'white',
            'border': 'none',
            'padding': '8px 12px',
            'borderRadius': '4px',
            'cursor': 'pointer',
          }
        )('Sign Out')
      );
    }

    // Create either login button or profile section based on sign-in status
    var authSection;
    if (isSignedIn) {
      // User is signed in, show profile section
      authSection = (Dom.div()
        ..style = {'display': 'flex', 'alignItems': 'center', 'position': 'relative'}
      )(
        (Dom.h1()
          ..style = {
            'fontFamily': 'Lato, sans-serif',
            'fontWeight': '300',
            'fontSize': '24px',
            'margin': '0',
          }
        )(props.name),

        // Clickable profile image
        (Dom.img()
          ..src = 'assets/Me.svg'
          ..style = {
            'width': '80px',
            'height': '80px',
            'marginLeft': '20px',
            'cursor': 'pointer',
          }
          ..onClick = _toggleMenu
        )(),

        // Add the popup menu if it exists
        popupMenu,
      );
    } else {
      // User is not signed in, show login button
      authSection = (Dom.div()(
        (LoginButton()..setUser = props.setUser)()
      ));
    }

    return (Dom.div()
      ..style = {
        'backgroundColor': '#1D1D1D',
        'borderRadius': '24px',
        'padding': '1.5rem',
        'color': '#FFFFFF',
        'display': 'flex',
        'justifyContent': 'space-between',
        'alignItems': 'center',
        'position': 'relative',
      }
    )(
      // Left logo
      (Dom.div()
        ..style = {'display': 'flex', 'alignItems': 'center'}
      )(
        (Dom.img()
          ..src = 'assets/LucidMind_Logo.svg'
          ..style = {
            'width': '80px',
            'height': '80px',
            'marginRight': '20px',
          }
        )(),
      ),

      // Right section - either login button or profile section
      authSection,
    );
  }
}