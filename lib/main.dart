import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student/models/user.dart';
import 'package:student/screens/intro.dart';
import 'package:student/globals.dart' as g;
import 'package:student/screens/loading.dart';
import 'package:student/screens/login.dart';
import 'package:student/screens/registration.dart';
import 'package:student/services/auth.dart';
import 'package:student/services/wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(home: LoadingPage());
        } else if (snapshot.connectionState == ConnectionState.done) {
          AuthServices auth = AuthServices();
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: StreamProvider<UserinApp>.value(
                value: auth.userIsIn,
                initialData: null,
                child: Wrapper(),
              ));
        }
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: LoadingPage(),
        );
      },
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: g.primary,
    //   ),
    //   home: MyHomePage(title: 'Flutter Demo Home Page'),
    // );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AuthServices auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserinApp>.value(
      value: auth.userIsIn,
      initialData: null,
      child: Wrapper(),
    );
    // return ContactPage();
    // return AboutScreen();
    // return AnalysisScreen();
  }
}
