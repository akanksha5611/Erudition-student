import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/navbar.dart';
import 'package:student/components/svglogo.dart';
import 'package:student/components/textform.dart';

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
                        SvgLogo(
                          logname: "employment",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: TextForm(
                            hint: "Class I'D:",
                            inputDecoration: InputDecoration(
                                hintText: "Class I'D:",
                                border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(32),
                                    topRight: Radius.circular(32),
                                  ),
                                ),
                                fillColor: Color(0xffDBE6FD),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 28.0, vertical: 40.0),
                                filled: true),
                          ),
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
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffDBE6FD),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(32),
                              bottomLeft: Radius.circular(32),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Center(
                            child: RawMaterialButton(
                              onPressed: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.025,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2C3B5A).withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'ANALYZE',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 14.0,
                                      color: const Color(0xFF2C3B5A),
                                      fontWeight: FontWeight.w700,
                                      height: 1.36,
                                    ),
                                  ),
                                ),
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
