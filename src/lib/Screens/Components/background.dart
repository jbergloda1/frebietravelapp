import 'package:flutter/material.dart';
import 'package:frebietravel/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              "assets/images/Explore.png",
              fit: BoxFit.cover,
            ),
          ),
          child,
        ],
      ),
    );
  }
}