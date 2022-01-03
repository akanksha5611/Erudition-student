import 'package:flutter/material.dart';
import 'package:student/components/RoundCont.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/footer.dart';
import 'package:student/components/greybut.dart';
import 'package:student/components/svglogo.dart';

class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({Key key}) : super(key: key);

  @override
  _AnalysisScreenState createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen> {
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
                          logname: "employment",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        RoundCont(
                          title: "Class I'D:",
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffDBE6FD),
                          ),
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.width * 0.24,
                          child: Container(
                            margin: EdgeInsets.all(20.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, right: 15),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: sub,
                                elevation: 16,
                                hint: Text('Subjects'),
                                onChanged: (String newValue) {
                                  setState(() {
                                    sub = newValue;
                                  });
                                },
                                items:
                                    subs.map<DropdownMenuItem<String>>((value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        GrayBut(
                          title: "ANALYZE",
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
