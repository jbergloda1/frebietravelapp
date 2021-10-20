import 'package:flutter/material.dart';

class ButtonBg extends StatelessWidget {
  final VoidCallback screenName;
  const ButtonBg({Key? key, required this.screenName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.1,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          image: DecorationImage(
              image: AssetImage("assets/images/buttonbg.png"),
              fit: BoxFit.cover),
        ),
        child: ElevatedButton(
          onPressed: screenName,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: Text(
            'EXPLORE',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
