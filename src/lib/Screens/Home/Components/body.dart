import 'package:flutter/material.dart';
import 'package:frebietravel/Components/buttonBackground.dart';
import 'package:frebietravel/Layouts/header1.dart';
import 'package:frebietravel/Screens/Home/Components/background.dart';
import 'package:frebietravel/Screens/Home2/home2.dart';
import 'package:frebietravel/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: <Widget>[
          Header(
            color: Colors.grey,
            textColor: kPrimaryColor,
            child: Container(),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: size.width,
                  height: size.height * 0.3,
                  padding: EdgeInsets.only(left: kPrimaryPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        'Leonard!',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.44,
                ),
                Container(
                  child: ButtonBg(
                    screenName: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home2();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
