import 'package:flutter/material.dart';
import 'package:frebietravel/Screens/Components/body.dart';
import 'package:frebietravel/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 200.0,
        leading: Container(
          padding: EdgeInsets.only(
            left: kPrimaryPadding,
            top: kPrimaryPadding + 10.0,
          ),
          child: Text(
            "LET'S GO!",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
