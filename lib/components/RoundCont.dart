import 'package:flutter/material.dart';
import 'package:student/components/textform.dart';

class RoundCont extends StatefulWidget {
  const RoundCont({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RoundContState createState() => _RoundContState();
}

class _RoundContState extends State<RoundCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: TextForm(
        hint: widget.title,
        inputDecoration: InputDecoration(
            hintText: widget.title,
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            fillColor: Color(0xffDBE6FD),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 28.0, vertical: 40.0),
            filled: true),
      ),
    );
  }
}
