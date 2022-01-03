import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/navbar.dart';
import 'package:student/components/svglogo.dart';
import 'package:student/components/textform.dart';
import 'package:student/globals.dart';

class NoticeBoardScreen extends StatefulWidget {
  const NoticeBoardScreen({Key key}) : super(key: key);

  @override
  _NoticeBoardScreenState createState() => _NoticeBoardScreenState();
}

class _NoticeBoardScreenState extends State<NoticeBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back, size: 50,),
          elevation: 0,
          backgroundColor: Colors.transparent,
          // centerTitle: true,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'ERUDITION',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 32.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                // textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        body: Stack(
          children: bg(context) +
              [
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 3,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                            child: Column(
                          children: [
                            Text(
                              'Notice Board',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 40.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                height: 1.35,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                        SizedBox(
                          height: 50,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                            bottomLeft: Radius.circular(32),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.90,
                              height: MediaQuery.of(context).size.width * 0.35,
                              decoration: BoxDecoration(
                                  // color: Color(0xffDBE6FD).withOpacity(0.5),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.2)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xffDBE6FD).withOpacity(0.5),
                                        Color(0xffDBE6FD).withOpacity(0.2),
                                      ])),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0, vertical: 7.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Project Demo',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 25.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.36,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Expanded(child: Container()),
                                              Text(
                                                'Date: 04-08-21',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 13.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.38,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 7.0),
                                              child: Text(
                                                'Complete the science project \nand submit by 08-08-21',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 13.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.38,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              child: Text(
                                                'Created for class 8th',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 9.0,
                                                  color: Colors.white,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.33,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 8),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "lib/assets/icons/icons8-comments-64.png")),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Second Container
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                            bottomLeft: Radius.circular(32),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.90,
                              height: MediaQuery.of(context).size.width * 0.35,
                              decoration: BoxDecoration(
                                  // color: Color(0xffDBE6FD).withOpacity(0.5),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.2)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xffDBE6FD).withOpacity(0.5),
                                        Color(0xffDBE6FD).withOpacity(0.2),
                                      ])),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0, vertical: 7.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Assignment Demo',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 25.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.36,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Expanded(child: Container()),
                                              Text(
                                                'Date: 04-08-21',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 13.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.38,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 7.0),
                                              child: Text(
                                                'Complete the Maths assignment\nand submit by 06-08-21',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 13.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.38,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              child: Text(
                                                'Created for class 9th',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 9.0,
                                                  color: Colors.white,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.33,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 8),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "lib/assets/icons/icons8-comments-64.png")),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xffDBE6FD),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Navbar(
                                  img: "awesome-sticky-note",
                                  title: "Notice Board"),
                              Navbar(
                                  img: "awesome-money-check-alt",
                                  title: "Fees Details"),
                              Navbar(
                                  img: "material-contacts",
                                  title: "Contact Us"),
                              Navbar(
                                  img: "awesome-info-circle",
                                  title: "About US"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
        ),
      ),
    );
  }
}
