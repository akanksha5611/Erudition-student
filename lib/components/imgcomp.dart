import 'package:flutter/material.dart';

class ImgComp extends StatelessWidget {
  const ImgComp({Key key, this.iconname}) : super(key: key);
  final String iconname;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/icons/$iconname.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
