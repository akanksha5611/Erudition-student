import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key key, this.img, this.title, this.onPressed})
      : super(key: key);
  final String img, title;
  final Function onPressed;
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.09,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/icons/${widget.img}.png")),
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 9.0,
              color: const Color(0xFF4E377C),
              fontWeight: FontWeight.w700,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
