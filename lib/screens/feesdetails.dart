import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/navbar.dart';
import 'package:student/components/svglogo.dart';
import 'package:student/components/textform.dart';
import 'package:student/globals.dart';

class FeesDetailsScreen extends StatefulWidget {
  const FeesDetailsScreen({Key key}) : super(key: key);

  @override
  _FeesDetailsScreenState createState() => _FeesDetailsScreenState();
}

class _FeesDetailsScreenState extends State<FeesDetailsScreen> {
  String sub = "India";
  List subs = ["India", "Aus", "England", "New Zealand"];
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
                              'Fees Details',
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
                          height: 30,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.90,
                              height: MediaQuery.of(context).size.width * 1.15,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Class 2021-2022',
                                                    style: TextStyle(
                                                      fontFamily: 'Segoe UI',
                                                      fontSize: 25.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.36,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Name      :',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.38,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Class      :',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.38,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Roll No      :',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.38,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Pending      :',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.38,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Paid Date      :',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.38,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 50),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Total Amount      :',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          fontSize: 20.0,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.38,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          horizontal: 34.0, vertical: 24),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/icons/icons8-download-64.png"),
                                        ),
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
