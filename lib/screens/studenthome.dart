import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/footer.dart';
import 'package:student/components/stuhome.dart';
import 'package:student/globals.dart';
import 'package:student/screens/doubt.dart';
import 'package:student/screens/onlinelecture.dart';
import 'package:student/screens/schedule.dart';
import 'package:student/screens/studentanalysis.dart';
import 'package:student/screens/studymaterial.dart';
import 'package:student/services/auth.dart';

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
            RawMaterialButton(
              onPressed: () async {
                AuthServices().signOut();
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/icons/signout.png"),
                  ),
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
              fontSize: 20.0,
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
                                            fontSize: 16.0,
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
                              StuHome(
                                img: "analysis",
                                title: "Analysis",
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: AnalysisScreen(),
                                      type: PageTransitionType.fade,
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              StuHome(
                                img: "Schedule",
                                title: "Schedule",
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: ScheduleScreen(),
                                      type: PageTransitionType.fade,
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: StuHome(
                                  title: "Study Material",
                                  img: "StudyMaterial",
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: MaterialScreen(),
                                        type: PageTransitionType.fade,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: StuHome(
                                  title: "AskDoubt",
                                  img: "AskDoubt",
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: DoubtScreen(),
                                        type: PageTransitionType.fade,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 100),
                                child: StuHome(
                                  title: "OnlineLecture",
                                  img: "OnlineLecture",
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: OnlineLectureScreen(),
                                        type: PageTransitionType.fade,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        footer(),
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
