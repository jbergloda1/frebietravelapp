import 'package:flutter/material.dart';
import 'package:frebietravel/constants.dart';

class Header extends StatelessWidget {
  final Widget child;
  final Color textColor;
  final Color color;
  const Header({
    Key? key,
    required this.color,
    required this.child,
    required this.textColor,
  }) : super(key: key);

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
              color: textColor,
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.45,
                    child: Divider(
                      height: 20,
                      thickness: 1,
                      color: color,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: size.width * 0.15,
                    child: Divider(
                      height: 20,
                      thickness: 1,
                      color: color,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: size.width * 0.1,
                    child: Divider(
                      height: 20,
                      thickness: 1,
                      color: color,
                    ),
                  ),
                ],
              ),
              child,
            ],
          ),
        ],
      ),
    );
  }
}
