import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/footer.dart';
import 'package:student/components/logocomp.dart';
import 'package:student/components/svglogo.dart';
import 'package:student/globals.dart';

class MaterialNextScreen extends StatefulWidget {
  const MaterialNextScreen({Key key}) : super(key: key);

  @override
  _MaterialNextScreenState createState() => _MaterialNextScreenState();
}

class _MaterialNextScreenState extends State<MaterialNextScreen> {
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
                  fontSize: 20.0,
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
                        SvgLogo(
                          logname: "icons8-spiral-bound-booklet-100",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Color(0xffDBE6FD).withOpacity(0.5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(32),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28.0, vertical: 16.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Selected Subject :',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        height: 1.34,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      LogoComp(
                                        img: "icons8-download-64",
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      LogoComp(
                                        img: "icons8-view-64",
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      LogoComp(
                                        img: "icons8-internet-64 (1)",
                                      ),
                                    ],
                                  ),
                                ],
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
