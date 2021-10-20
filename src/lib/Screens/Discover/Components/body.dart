import 'package:flutter/material.dart';
import 'package:frebietravel/Components/menus.dart';
import 'package:frebietravel/Modals/menus.dart';
import 'package:frebietravel/Screens/Discover/Components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const text = 'Amsterdam!';
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Text(
                      'Discover,\n' + text,
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/icons/search.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Menus(),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Top activities',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              height: size.height * 0.3,
              child: Image.asset(
                'assets/images/1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Nearby activities',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              width: size.width,
              height: size.height * 0.2,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     Container(
                  //       height: size.height * 0.2,
                  //       color: Colors.black,
                  //       child: Image.asset('assets/images/3.png'),
                  //     ),
                  //     SizedBox(
                  //       width: size.width * 0.03,
                  //     ),
                  //     Container(
                  //       height: size.width * 0.2,
                  //       color: Colors.black,
                  //       child: Image.asset('assets/images/4.png'),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              width: size.width,
              height: size.width * 0.4,
              child: Image.asset(
                'assets/images/2.png',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
