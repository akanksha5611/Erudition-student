import 'dart:ui';

import 'package:flutter/material.dart';

class StuHome extends StatefulWidget {
  const StuHome({Key key, this.title, this.img}) : super(key: key);
  final String title, img;

  @override
  _StuHomeState createState() => _StuHomeState();
}

class _StuHomeState extends State<StuHome> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(32),
        bottomRight: Radius.circular(32),
        bottomLeft: Radius.circular(32),
        topLeft: Radius.circular(32),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.18,
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/icons/${widget.img}.png"),
                    ),
                  ),
                ),
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.36,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
