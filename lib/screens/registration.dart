import 'package:flutter/material.dart';
import 'package:student/components/Regfield.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/footer.dart';
import 'package:student/globals.dart' as g;

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
                        height: 30,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.55,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Registration',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 22.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                height: 1.35,
                              ),
                            ),
                            Regfield(
                              hint: "Name :",
                            ),
                            Regfield(
                              hint: "Email :",
                            ),
                            Regfield(
                              hint: "Password :",
                            ),
                            Regfield(
                              hint: "Confirm Password :",
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "SUBMIT",
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 16,
                                  color: Color(0xffFCFCFC),
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.start,
                              )),
                              height: 54,
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                  color: Color(0xff7C7A98).withOpacity(0.65),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32),
                                    bottomRight: Radius.circular(32),
                                    bottomLeft: Radius.circular(32),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      footer(),
                    ],
                  ),
                )),
              ],
        ),
      ),
    );
  }
}
