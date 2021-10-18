import 'package:flutter/material.dart';

class ButtonBg extends StatelessWidget {
  const ButtonBg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.1,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/buttonbg.png"),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Text(
              'EXPLORE',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        onTap: () {
          print("you clicked me");
        });
  }
}
