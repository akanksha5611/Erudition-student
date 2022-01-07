import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:student/models/user.dart';
import 'package:student/globals.dart' as g;

class DatabaseServices {
  //current user
  Future<UserinApp> currentUser(uid) async {
    Map data = await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .get()
        .then((value) => value.data());
    g.userinApp = UserinApp.fromMap(data);
    return g.userinApp;
  }
}
