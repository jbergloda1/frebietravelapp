import 'package:flutter/material.dart';
import 'package:frebietravel/Screens/Home/Welcome-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: WelcomeScreen(),
    );
  }
}
