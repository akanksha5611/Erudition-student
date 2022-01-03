import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({Key key, this.hint, this.inputDecoration}) : super(key: key);
  final String hint;
  final InputDecoration inputDecoration;

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Segoe UI',
          fontSize: 16.0,
          color: const Color(0xFF6E6B6B),
        ),
        decoration: widget.inputDecoration != null
            ? widget.inputDecoration
            : InputDecoration(
                hintText: widget.hint,
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(27)),
                fillColor: Color(0xffDBE6FD),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
                filled: true),
      ),
    );
  }
}
