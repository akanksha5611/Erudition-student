import 'package:flutter/material.dart';

class GrayBut extends StatefulWidget {
  const GrayBut({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _GrayButState createState() => _GrayButState();
}

class _GrayButState extends State<GrayBut> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: MediaQuery.of(context).size.height * 0.025,
            decoration: BoxDecoration(
              color: Color(0xFF2C3B5A).withOpacity(0.2),
              borderRadius: BorderRadius.all(
                Radius.circular(32),
              ),
            ),
            child: Center(
              child: Text(
                widget.title,
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
    );
  }
}
