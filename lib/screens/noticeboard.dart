import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student/components/bg.dart';
import 'package:student/components/footer.dart';
import 'package:student/components/noticecomp.dart';
import 'package:student/globals.dart';

class NoticeBoardScreen extends StatefulWidget {
  const NoticeBoardScreen({Key key}) : super(key: key);

  @override
  _NoticeBoardScreenState createState() => _NoticeBoardScreenState();
}

class _NoticeBoardScreenState extends State<NoticeBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
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
                        Container(
                            child: Column(
                          children: [
                            Text(
                              'Notice Board',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 26.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                height: 1.35,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        NoticesCont(
                          title: 'Project Demo',
                          date: 'Date: 04-08-21',
                          desc:
                              'Complete the science project \nand submit by 08-08-21',
                          classes: 'Created for class 8th',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        NoticesCont(
                          title: 'Assignment Demo',
                          date: 'Date: 04-08-21',
                          desc:
                              'Complete the Maths assignment\nand submit by 06-08-21',
                          classes: 'Created for class 9th',
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
