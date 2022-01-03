import 'package:flutter/material.dart';
import 'package:student/components/RoundCont.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/footer.dart';
import 'package:student/components/greybut.dart';
import 'package:student/components/svglogo.dart';

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({Key key}) : super(key: key);

  @override
  _MaterialScreenState createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
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
                          logname: "online-books-study-materials-for-education",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        RoundCont(
                          title: "CLASS I'D",
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
                          title: "NEXT",
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
