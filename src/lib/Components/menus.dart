import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  const Menus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: 30,
      child:
          // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: menus.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     MyMenu g = menus[index];
          //     return Row(
          //       children: <Widget>[
          //         Container(
          //           alignment: Alignment.center,
          //           color: Colors.white,
          //           width: size.width * 0.3,
          //           child: Text(g.name),
          //         ),
          //       ],
          //     );
          //   },
          // ),
          ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFB2EBF2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(29),
                  ),
                ),
                width: 50,
                child: Text(
                  'ALL',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 100,
                child: Text(
                  'MUSEUMS',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 150,
                child: Text(
                  'HISTORICAL PLACES',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 100,
                child: Text(
                  'RESTAURANT',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
