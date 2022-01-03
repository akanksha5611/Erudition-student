import 'dart:ui';

import 'package:flutter/material.dart';

class NoticesCont extends StatefulWidget {
  const NoticesCont({Key key, this.title, this.date, this.desc, this.classes})
      : super(key: key);
  final String title, date, desc, classes;

  @override
  _NoticesContState createState() => _NoticesContState();
}

class _NoticesContState extends State<NoticesCont> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(32),
        bottomRight: Radius.circular(32),
        bottomLeft: Radius.circular(32),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: MediaQuery.of(context).size.width * 0.35,
          decoration: BoxDecoration(
              // color: Color(0xffDBE6FD).withOpacity(0.5),
              border: Border.all(color: Colors.white.withOpacity(0.2)),
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
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              height: 1.36,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Expanded(child: Container()),
                          Text(
                            widget.date,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              height: 1.38,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 7.0),
                          child: Text(
                            widget.desc,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              height: 1.38,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            widget.classes,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 9.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              height: 1.33,
                            ),
                          ),
                        ),
                      ],
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
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/assets/icons/icons8-comments-64.png")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
