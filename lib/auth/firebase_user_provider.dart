import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TunewellFirebaseUser {
  TunewellFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TunewellFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TunewellFirebaseUser> tunewellFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TunewellFirebaseUser>(
            (user) => currentUser = TunewellFirebaseUser(user));
