import 'package:flutter/material.dart';
import 'package:frebietravel/Screens/Welcome-screen.dart';
import 'package:frebietravel/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
