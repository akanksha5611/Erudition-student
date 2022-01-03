import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/footer.dart';
import 'package:student/components/stuhome.dart';
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
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              StuHome(
                                img: "Schedule",
                                title: "Schedule",
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
