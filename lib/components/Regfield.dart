import 'package:flutter/material.dart';

class Regfield extends StatefulWidget {
  const Regfield({Key key, this.hint}) : super(key: key);
  final String hint;

  @override
  _RegfieldState createState() => _RegfieldState();
}

class _RegfieldState extends State<Regfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontFamily: 'Segoe UI',
        fontSize: 16.0,
        color: const Color(0xFF6E6B6B),
      ),
      decoration: InputDecoration(
          hintText: widget.hint,
          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(16)),
          fillColor: Color(0xffDBE6FD),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 26.0, vertical: 16.0),
          filled: true),
    );
  }
}
