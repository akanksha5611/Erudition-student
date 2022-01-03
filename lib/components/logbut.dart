import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:student/screens/login.dart';

class LogBut extends StatefulWidget {
  const LogBut({Key key, this.onpress}) : super(key: key);
  final Function onpress;

  @override
  _LogButState createState() => _LogButState();
}

class _LogButState extends State<LogBut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        onPressed: widget.onpress,
        child: Center(
            child: Text(
          "LOGIN",
          style: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 28.5,
            color: Color(0xff54436B),
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        )),
      ),
      height: 64,
      width: 294,
      decoration: BoxDecoration(
          color: Color(0xffDBE6FD),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          )),
    );
  }
}
