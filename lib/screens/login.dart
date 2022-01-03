import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/logbut.dart';
import 'package:student/globals.dart' as g;

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: bg(context) +
            [
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: g.width * 0.171,
                            height: g.height * 0.121,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("lib/assets/logo.png"),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'ERUDITION',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 42.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        width: g.width * 0.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Login to \nyour account',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 30.0,
                                  color: const Color(0xFFC7C1C1),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextFormField(
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 16.0,
                                color: const Color(0xFF6E6B6B),
                              ),
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(27)),
                                  fillColor: Color(0xffDBE6FD),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 28.0, vertical: 16.0),
                                  filled: true),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              obscureText: true,
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 16.0,
                                color: const Color(0xFF6E6B6B),
                              ),
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(27)),
                                  fillColor: Color(0xffDBE6FD),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 28.0, vertical: 16.0),
                                  filled: true),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // Group: Remember me

                            SizedBox(
                              width: g.width * 0.8,
                              height: 32.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(child: Container()),
                                  Align(
                                    alignment: Alignment(0.0, 0.09),
                                    child: Text(
                                      'Remember me',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 16.0,
                                        color: const Color(0xFFC7C1C1),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    alignment: Alignment(0.87, 0.0),
                                    width: 56.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      color: const Color(0xFF74EB96),
                                    ),
                                    child: Container(
                                      width: 26.0,
                                      height: 26.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      LogBut(
                        onpress: () {},
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 16.0,
                          color: const Color(0xFFC7C1C1),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ),
            ],
      ),
    );
  }
}
