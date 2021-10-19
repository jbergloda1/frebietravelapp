import 'package:flutter/material.dart';
import 'package:frebietravel/constants.dart';

class Header extends StatelessWidget {
  final Color color;
  const Header({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: kPrimaryPadding + 40.0),
      width: size.width * 0.9,
      height: size.height * 0.12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "LET'S GO!",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: kPrimaryColor,
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: color,
          ),
        ],
      ),
    );
  }
}
