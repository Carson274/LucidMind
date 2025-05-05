import 'package:over_react/over_react.dart';
import '../firebase_auth_interop.dart';
import 'dart:js_interop';

part 'login_button.over_react.g.dart';

@Factory()
UiFactory<LoginButtonProps> LoginButton = _$LoginButton;

@Props()
mixin LoginButtonProps on UiProps {
  void Function(String)? setUserName;
}

@Component2()
class LoginButtonComponent extends UiComponent2<LoginButtonProps> {
  void _handleSignIn(_) async {
    print('🔄 Sign-in clicked');

    try {
      final auth = firebaseAuth;
      final promise = auth.signInWithPopup(GoogleAuthProvider()); // ✅ must not be null
      final result = await promise.toDart;
      if (result == null) {
        print("❌ Sign-in returned null.");
        return;
      }

      final credential = result as FirebaseUserCredential; // ✅ key line
      final user = credential.user;

      print("🧑 Name: ${user.displayName}");
      print("📧 Email: ${user.email}");

      props.setUserName!(user.displayName);
    } catch (e) {
      print("🔥 Error during sign-in: $e");
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
