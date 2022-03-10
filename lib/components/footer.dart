import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:student/components/navbar.dart';
import 'package:student/screens/about.dart';
import 'package:student/screens/contact.dart';
import 'package:student/screens/feesdetails.dart';
import 'package:student/screens/noticeboard.dart';

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
          Navbar(
            img: "awesome-sticky-note",
            title: "Notice Board",
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  child: NoticeBoardScreen(),
                  type: PageTransitionType.fade,
                ),
              );
            },
          ),
          Navbar(
            img: "awesome-money-check-alt",
            title: "Fees Details",
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  child: FeesDetailsScreen(),
                  type: PageTransitionType.fade,
                ),
              );
            },
          ),
          Navbar(
            img: "material-contacts",
            title: "Contact Us",
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  child: ContactPage(),
                  type: PageTransitionType.fade,
                ),
              );
            },
          ),
          Navbar(
            img: "awesome-info-circle",
            title: "About US",
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  child: AboutScreen(),
                  type: PageTransitionType.fade,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
