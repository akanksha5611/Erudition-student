import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/logbut.dart';
import 'package:student/globals.dart' as g;
import 'package:page_transition/page_transition.dart';
import 'package:student/screens/about.dart';
import 'package:student/screens/contact.dart';
import 'package:student/screens/doubt.dart';
import 'package:student/screens/feesdetails.dart';
import 'package:student/screens/login.dart';
import 'package:student/screens/noticeboard.dart';
import 'package:student/screens/onlinelecture.dart';
import 'package:student/screens/registration.dart';
import 'package:student/screens/schedule.dart';
import 'package:student/screens/studentanalysis.dart';
import 'package:student/screens/studenthome.dart';
import 'package:student/screens/studymaterial.dart';
import 'package:student/screens/studymaterialnext.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    g.height = MediaQuery.of(context).size.height;
    g.width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: bg(context) +
            [
              Positioned(
                  child: Container(
                width: g.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.443,
                      height: MediaQuery.of(context).size.height * 0.316,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/assets/logo.png"),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                          Container(
                            height: 6,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          Expanded(child: Container()),
                          Text(
                            'Join Our Community 0f 10+ \nmillion people around the world !',
                            style: GoogleFonts.marckScript(
                              textStyle: TextStyle(
                                fontSize: 16.0,
                                color: const Color(0xFFC7C1C1),
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    LogBut(
                      onpress: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: MaterialNextScreen(),
                          ),
                        );
                      },
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        "REGISTER",
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 28.5,
                          color: Color(0xff9981B8),
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      )),
                      height: 64,
                      width: 294,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Color(0xffDBE6FD)),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                            bottomLeft: Radius.circular(32),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )),
            ],
      ),
    );
  }
}
