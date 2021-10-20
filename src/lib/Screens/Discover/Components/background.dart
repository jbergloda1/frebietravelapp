import 'package:flutter/material.dart';
import 'package:frebietravel/constants.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: kPrimaryPadding + 20,
        left: kPrimaryPadding,
        right: kPrimaryPadding,
      ),
      height: size.height,
      width: double.infinity,
      child: child,
    );
  }
}
