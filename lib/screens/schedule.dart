import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/navbar.dart';
import 'package:student/components/svglogo.dart';
import 'package:student/components/textform.dart';
import 'package:student/globals.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
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
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Wrap(
                            direction: Axis.horizontal,
                            clipBehavior: Clip.none,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 6.0, sigmaY: 6.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.90,
                                    height: MediaQuery.of(context).size.width *
                                        0.25,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'TIME-TABLE',
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
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff3A274F),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
                              ),
                              Row(
                                children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                        ),
                                      )
                                    ] +
                                    List.generate(
                                        7,
                                        (i) => Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white
                                                        .withOpacity(0.2)),
                                              ),
                                            )),
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
