import 'package:flutter/material.dart';

class DoubtComp extends StatefulWidget {
  const DoubtComp({Key key, this.ques}) : super(key: key);
  final String ques;

  @override
  _DoubtCompState createState() => _DoubtCompState();
}

class _DoubtCompState extends State<DoubtComp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        color: Color(0xffDBE6FD).withOpacity(0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8.0),
            child: Row(
              children: [
                Text(
                  widget.ques,
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 18.0,
                    color: Colors.white,
                    height: 1.34,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.045,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/assets/icons/icons8-image-64.png")),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.045,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/assets/icons/icons8-internet-64 (1).png")),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.045,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/assets/icons/icons8-comments-64.png")),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
