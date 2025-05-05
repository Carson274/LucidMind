import 'package:over_react/over_react.dart';

// Import login button
import '../components/login_button.dart';

part 'header.over_react.g.dart';

UiFactory<HeaderProps> Header = castUiFactory(_$Header);

// Props for the Header component
mixin HeaderProps on UiProps {
  String? name;
  void Function(String)? setUserName;
}

class HeaderComponent extends UiComponent2<HeaderProps> {
  @override
  render() {
    return (Dom.div()
      ..style = {
        'backgroundColor': '#1D1D1D',
        'borderRadius': '24px',
        'padding': '1.5rem',
        'color': '#FFFFFF',
        'display': 'flex',
        'justifyContent': 'space-between',
        'alignItems': 'center',
      }
    ) (
      // Left side of the header
      (Dom.div()
        ..style = {
          'display': 'flex',
          'alignItems': 'center',
        }
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

      (Dom.div()(
        (LoginButton()
          ..setUserName = props.setUserName
        )()
      )),

      // Right side of the header
      (Dom.div()
        ..style = {
          'display': 'flex',
          'alignItems': 'center',
        }
      ) (
          (Dom.h1()
            ..style = {
              'fontFamily': 'Lato, sans-serif',
              'fontWeight': '300',
              'fontSize': '24px',
              'margin': '0',
            }
          )(props.name ?? 'User Not Found'),
          (Dom.img()
            ..src = 'assets/Me.svg'
            ..style = {
              'width': '80px',
              'height': '80px',
              'marginLeft': '20px',
            }
          )(),
        ),
    );
  }
}

