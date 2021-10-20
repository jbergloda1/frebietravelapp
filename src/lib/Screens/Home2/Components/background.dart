import 'dart:ui';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final bool boxInsite;
  final String image;
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    required this.boxInsite,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
