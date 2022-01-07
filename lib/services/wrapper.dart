import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student/components/stuhome.dart';
import 'package:student/screens/login.dart';
import 'package:student/globals.dart' as g;
import 'package:student/models/user.dart';
import 'package:student/screens/studenthome.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserinApp>(context);
    g.userinApp = user;
    if (user == null) {
      return LoginPage();
    } else {
      return StudentHomeScreen();
    }
  }
}
