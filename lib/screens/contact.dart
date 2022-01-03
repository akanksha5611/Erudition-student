import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/components/imgcomp.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
          'CONTACT US',
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
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 40,
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
                      height: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.19,
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
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Address :\nBranches:",
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 16,
                            color: Color(0xff54436B),
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      height: 90,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Color(0xffDBE6FD),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "CONTACT NO.",
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 15,
                            color: Color(0xffD1C5E1),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Color(0xffDBE6FD)),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 10,
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
              )),
            ],
      ),
    ));
  }
}
