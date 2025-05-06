import 'package:over_react/over_react.dart';
import '../firebase_auth_interop.dart';
import 'dart:js_interop';

part 'login_button.over_react.g.dart';

@Factory()
UiFactory<LoginButtonProps> LoginButton = _$LoginButton;

@Props()
mixin LoginButtonProps on UiProps {
  void Function(String, String, String)? setUser;
}

@Component2()
class LoginButtonComponent extends UiComponent2<LoginButtonProps> {
  void _handleSignIn(_) async {
    print('Sign-in clicked');

    try {
      final auth = firebaseAuth;
      final promise = auth.signInWithPopup(GoogleAuthProvider());
      final result = await promise.toDart;
      if (result == null) {
        print("Error during sign-in: Sign-in returned null user.");
        return;
      }

      final credential = result as FirebaseUserCredential;
      final user = credential.user;

      print("Name: ${user.displayName}");
      print("Email: ${user.email}");
      props.setUser!(user.displayName, user.email, user.uid);
    } catch (e) {
      print("Error during sign-in: $e");
    }
  }

  @override
  render() {
    return (Dom.button()
      ..onClick = _handleSignIn
      ..style = {
        'padding': '0.5rem 1rem',
        'fontSize': '1rem',
        'borderRadius': '8px',
        'backgroundColor': '#4285F4',
        'color': 'white',
        'border': 'none',
        'cursor': 'pointer',
      }
    )('Sign in with Google');
  }
}
