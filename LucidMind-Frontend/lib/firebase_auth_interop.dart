import 'dart:js_interop';

@JS('firebase')
@staticInterop
class FirebaseGlobal {}

@JS()
external FirebaseGlobal get firebase;

@JS()
@staticInterop
class FirebaseAuth {}

extension FirebaseGlobalExtension on FirebaseGlobal {
  external FirebaseAuth auth();
}

FirebaseAuth get firebaseAuth => firebase.auth();

@JS('firebase.auth.GoogleAuthProvider')
@staticInterop
class GoogleAuthProvider {
  external factory GoogleAuthProvider();
}

extension FirebaseAuthExtension on FirebaseAuth {
  external JSPromise signInWithPopup(GoogleAuthProvider provider);
}

@JS()
@staticInterop
class FirebaseUserCredential {}

extension FirebaseUserCredentialExtension on FirebaseUserCredential {
  external FirebaseUser get user;
}

@JS()
@staticInterop
class FirebaseUser {}

extension FirebaseUserExtension on FirebaseUser {
  external String get displayName;
  external String get email;
  external String get uid;
  external JSPromise getIdToken([bool forceRefresh]);
}
