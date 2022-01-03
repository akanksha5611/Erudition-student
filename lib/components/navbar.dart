import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key key, this.img, this.title}) : super(key: key);
  final String img, title;
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.1,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/icons/${widget.img}.png")),
          ),
        ),
        Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 10.0,
            color: const Color(0xFF4E377C),
            fontWeight: FontWeight.w700,
            height: 1.4,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
