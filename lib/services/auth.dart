import 'package:student/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:student/services/dbserv.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //stream of user login
  Stream<UserinApp> get userIsIn {
    return _auth.userChanges().map((event) {
      if (event == null) {
        return null;
      }
      UserinApp user;
      DatabaseServices().currentUser(event.uid).then((value) {
        user = value;
      });
      return UserinApp.fromMap(
        {'uid': event.uid, 'phone': event.phoneNumber},
      );
    });
  }

  //get info of user with id
  Future<UserinApp> getUserWithId(String uid) async {
    UserinApp user = UserinApp.fromMap({uid: uid});
    user = await DatabaseServices().currentUser(uid);
    return user;
  }

  //register with email and password
  // Future registerWithEmailAndPassword(String email, String password) async {
  //   try {
  //     UserCredential result = await _auth.createUserWithEmailAndPassword(
  //         email: email.trim(), password: password.trim());
  //     User user = result.user;
  //     DatabaseServices().addUserInfo(UserinApp.fromMap({
  //       'uid': user.uid,
  //       'email': email.trim(),
  //       'password': password.trim()
  //     }));
  //     return UserinApp.fromMap({
  //       'uid': user.uid,
  //       'email': email.trim(),
  //       'password': password.trim()
  //     });
  //   } catch (e) {
  //     print(e);
  //     return null;
  //   }
  // }

  Future signin(email, password) async {
    try {
      var v = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = v.user;
      var c = await getUserWithId(user.uid);
      return c;
    } catch (e) {
      print(e);
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return 'error';
    }
  }
}
