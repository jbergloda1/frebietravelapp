import 'package:flutter/material.dart';
import 'package:frebietravel/Layouts/header1.dart';
import 'package:frebietravel/Screens/Home2/Components/background.dart';
import 'package:frebietravel/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Body extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/Explorethecity1.png'
        'assets/images/Explorethecity2.png'
  ];
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: <Widget>[
          Container(
            child: Header(
              color: Colors.white,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: kPrimaryPadding),
            child: Text(
              'Choose \nyour city',
              style: TextStyle(
                fontSize: 45.0,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            height: size.height * 0.56,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                    bottom: 60,
                  ),
                  child: Container(
                    width: size.width * 0.9 - 20,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    // child: CarouselSlider(
                    //   options: CarouselOptions(
                    //     enableInfiniteScroll: false,
                    //     autoPlay: true,
                    //   ),
                    //   items: imageList
                    //       .map(
                    //         (e) => ClipRRect(
                    //           borderRadius: BorderRadius.circular(8),
                    //           child: Stack(
                    //             fit: StackFit.expand,
                    //             children: <Widget>[
                    //               Image.asset(e),
                    //             ],
                    //           ),
                    //         ),
                    //       )
                    //       .toList(),
                    // ),
                  ),
                ),
              ],
            ),
          ),
          // Stack(
          //   children: <Widget>[
          //     Container(
          //       alignment: Alignment.center,
          //       width: size.width * 0.9,
          //       height: size.height * 0.5,
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(5.0),
          //         ),
          //       ),
          //       child: Container(
          //         width: size.width * 0.8,
          //         height: size.height * 0.3,
          //         decoration: BoxDecoration(color: Colors.transparent),
          //       ),
          //       // decoration: BoxDecoration(),
          //     ),
          //     Positioned(
          //       width: size.width * 0.3,
          //       height: 20,
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.black,
          //           borderRadius: BorderRadius.all(
          //             Radius.circular(5.0),
          //           ),
          //         ),
          //       ),
          //       // decoration: BoxDecoration(),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
