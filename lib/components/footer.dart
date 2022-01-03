import 'package:flutter/material.dart';
import 'package:student/components/navbar.dart';

class footer extends StatelessWidget {
  const footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.085,
      width: MediaQuery.of(context).size.width,
      color: Color(0xffDBE6FD),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Navbar(img: "awesome-sticky-note", title: "Notice Board"),
          Navbar(img: "awesome-money-check-alt", title: "Fees Details"),
          Navbar(img: "material-contacts", title: "Contact Us"),
          Navbar(img: "awesome-info-circle", title: "About US"),
        ],
      ),
    );
  }
}
