import 'package:flutter/material.dart';

class SvgLogo extends StatelessWidget {
  const SvgLogo({Key key, this.logname}) : super(key: key);
  final String logname;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135.0,
      height: 135.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/icons/$logname.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
