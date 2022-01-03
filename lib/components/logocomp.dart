import 'package:flutter/material.dart';

class LogoComp extends StatefulWidget {
  const LogoComp({Key key, this.img}) : super(key: key);
  final String img;

  @override
  _LogoCompState createState() => _LogoCompState();
}

class _LogoCompState extends State<LogoComp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("lib/assets/icons/${widget.img}.png")),
      ),
    );
  }
}
