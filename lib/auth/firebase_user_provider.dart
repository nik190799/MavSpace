import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MavSpaceFirebaseUser {
  MavSpaceFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MavSpaceFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MavSpaceFirebaseUser> mavSpaceFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MavSpaceFirebaseUser>(
      (user) {
        currentUser = MavSpaceFirebaseUser(user);
        return currentUser!;
      },
    );
