import 'package:flutter/material.dart';
import 'package:frebietravel/Components/buttonBackground.dart';
import 'package:frebietravel/Screens/Components/background.dart';
import 'package:frebietravel/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Divider(
                  height: 20,
                  thickness: 1,
                  color: Colors.blueGrey,
                ),
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
                  height: size.height * 0.4,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      child: ButtonBg(),
                    ),
                  ],
                ),
              ],
            ),
          )
          // Row(
          //   children: <Widget>[
          //     Padding(
          //       padding: EdgeInsets.only(
          //         top: kPrimaryPadding + 30.0,
          //         left: kPrimaryPadding + 10.0,
          //       ),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: <Widget>[
          //           Text(
          //             "LET'S GO!",
          //             style: TextStyle(
          //               fontWeight: FontWeight.w500,
          //               color: kPrimaryColor,
          //             ),
          //           ),
          //           Divider(
          //             height: 20,
          //             thickness: 1,
          //             color: Colors.blueGrey,
          //           ),
          //           SizedBox(
          //             height: size.height * 0.15,
          //           ),
          //           Text(
          //             "Hello",
          //             style: TextStyle(
          //               fontWeight: FontWeight.w500,
          //               color: kPrimaryColor,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
