import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/navbar.dart';
import 'package:student/components/svglogo.dart';
import 'package:student/components/textform.dart';
import 'package:student/globals.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({Key key}) : super(key: key);

  @override
  _StudentHomeScreenState createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              width: 50,
              height: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/icons/signout.png"),
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'ERUDITION',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 32.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            // textAlign: TextAlign.center,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "lib/assets/icons/woman.png"),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'WELCOME BACK',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 18.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'username',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 18.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Wrap(
                            direction: Axis.horizontal,
                            clipBehavior: Clip.none,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(32),
                                  bottomRight: Radius.circular(32),
                                  bottomLeft: Radius.circular(32),
                                  topLeft: Radius.circular(32),
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 6.0, sigmaY: 6.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.40,
                                    height: MediaQuery.of(context).size.width *
                                        0.40,
                                    decoration: BoxDecoration(
                                        // color: Color(0xffDBE6FD).withOpacity(0.5),
                                        border: Border.all(
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                        gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color(0xffDBE6FD)
                                                  .withOpacity(0.5),
                                              Color(0xffDBE6FD)
                                                  .withOpacity(0.2),
                                            ])),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.28,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "lib/assets/icons/analysis.png"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Analysis',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 25.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            height: 1.36,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(32),
                                  bottomRight: Radius.circular(32),
                                  bottomLeft: Radius.circular(32),
                                  topLeft: Radius.circular(32),
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 6.0, sigmaY: 6.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.40,
                                    height: MediaQuery.of(context).size.width *
                                        0.40,
                                    decoration: BoxDecoration(
                                        // color: Color(0xffDBE6FD).withOpacity(0.5),
                                        border: Border.all(
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                        gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color(0xffDBE6FD)
                                                  .withOpacity(0.5),
                                              Color(0xffDBE6FD)
                                                  .withOpacity(0.2),
                                            ])),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.28,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "lib/assets/icons/Schedule.png"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Schedule',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 25.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            height: 1.36,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32),
                                    bottomRight: Radius.circular(32),
                                    bottomLeft: Radius.circular(32),
                                    topLeft: Radius.circular(32),
                                  ),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 6.0, sigmaY: 6.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.40,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.40,
                                      decoration: BoxDecoration(
                                          // color: Color(0xffDBE6FD).withOpacity(0.5),
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.2)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xffDBE6FD)
                                                    .withOpacity(0.5),
                                                Color(0xffDBE6FD)
                                                    .withOpacity(0.2),
                                              ])),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.28,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "lib/assets/icons/StudyMaterial.png"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Study Material',
                                            style: TextStyle(
                                              fontFamily: 'Segoe UI',
                                              fontSize: 21.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              height: 1.38,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32),
                                    bottomRight: Radius.circular(32),
                                    bottomLeft: Radius.circular(32),
                                    topLeft: Radius.circular(32),
                                  ),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 6.0, sigmaY: 6.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.40,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.40,
                                      decoration: BoxDecoration(
                                          // color: Color(0xffDBE6FD).withOpacity(0.5),
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.2)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xffDBE6FD)
                                                    .withOpacity(0.5),
                                                Color(0xffDBE6FD)
                                                    .withOpacity(0.2),
                                              ])),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.28,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "lib/assets/icons/AskDoubt.png"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Ask Doubt',
                                            style: TextStyle(
                                              fontFamily: 'Segoe UI',
                                              fontSize: 25.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              height: 1.36,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 100),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32),
                                    bottomRight: Radius.circular(32),
                                    bottomLeft: Radius.circular(32),
                                    topLeft: Radius.circular(32),
                                  ),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 6.0, sigmaY: 6.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.40,
                                      decoration: BoxDecoration(
                                          // color: Color(0xffDBE6FD).withOpacity(0.5),
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.2)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xffDBE6FD)
                                                    .withOpacity(0.5),
                                                Color(0xffDBE6FD)
                                                    .withOpacity(0.2),
                                              ])),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.28,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "lib/assets/icons/OnlineLecture.png"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Online Lecture',
                                            style: TextStyle(
                                              fontFamily: 'Segoe UI',
                                              fontSize: 21.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              height: 1.38,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
