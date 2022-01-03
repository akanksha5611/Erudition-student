import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/doubtcomp.dart';
import 'package:student/components/footer.dart';
import 'package:student/components/svglogo.dart';
import 'package:student/globals.dart';

class DoubtScreen extends StatefulWidget {
  const DoubtScreen({Key key}) : super(key: key);

  @override
  _DoubtScreenState createState() => _DoubtScreenState();
}

class _DoubtScreenState extends State<DoubtScreen> {
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
                          logname: "woman",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        DoubtComp(
                          ques: "What is Data warehouse?",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DoubtComp(ques: " 'What is Data?'"),
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
