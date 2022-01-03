import 'package:flutter/material.dart';

List<Widget> bg(context) {
  return [
    Positioned(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/background/bg1intro.png"),
              fit: BoxFit.cover),
        ),
      ),
    ),
    Positioned(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xff54436B).withOpacity(0.9),
              Color(0xff543183).withOpacity(0.9),
              Color(0xff1F3546).withOpacity(0.9)
            ])),
      ),
    ),
  ];
}
