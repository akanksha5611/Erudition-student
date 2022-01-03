import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/imgcomp.dart';
import 'package:student/globals.dart' as g;
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back, size: 50,),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'ABOUT US',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 26.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Stack(
          children: bg(context) +
              [
                Positioned(
                  child: Container(
                    width: g.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                // ARROW
                                ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
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
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.30,
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
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'ADD REQUIRED \nINFORMATION HERE !! ',
                                style: TextStyle(
                                  fontFamily: 'Segoe Script',
                                  fontSize: 16.0,
                                  color: const Color(0xFFC7C1C1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            ImgComp(
                              iconname: "ICInsta",
                            ),
                            ImgComp(
                              iconname: "ICFacebook",
                            ),
                            ImgComp(
                              iconname: "ICTweet",
                            ),
                            ImgComp(
                              iconname: "ICGmail",
                            ),
                            ImgComp(
                              iconname: "IClinkedIn",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
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
