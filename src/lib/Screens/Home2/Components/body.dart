import 'package:flutter/material.dart';
import 'package:frebietravel/Layouts/header1.dart';
import 'package:frebietravel/Screens/Discover/discover.dart';
import 'package:frebietravel/Screens/Home2/Components/background.dart';
import 'package:frebietravel/constants.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  double value = 6;
  final List<String> imageList = [
    'assets/images/Explorethecity1.png'
        'assets/images/Explorethecity2.png'
  ];
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      image: 'assets/images/Explorethecity1.png',
      boxInsite: false,
      child: Column(
        children: <Widget>[
          Header(
            color: Colors.white,
            textColor: kPrimaryColor,
            child: Positioned(
              bottom: -15,
              right: 0,
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/icons/search.png'),
                ),
              ),
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
              border: Border.all(
                color: Colors.white,
                width: 15,
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 60,
                  ),
                  child: Container(
                    width: size.width * 0.9 - 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          width: size.width,
                          child: Image.asset(
                            'assets/images/Explorethecity1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: size.width,
                          child: Image.asset(
                            'assets/images/Explorethecity2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 20,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'LONDON',
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -24,
                  left: 80,
                  child: Container(
                    width: size.width * 0.4,
                    height: 21,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(33),
                      ),
                    ),
                    child: CustomPaint(
                      painter: PageIndicatorPainter(
                        pageCount: 6,
                        dotRadius: 3,
                        dotOutlineThickness: 6,
                        spacing: 10,
                        dotFillColor: Colors.green,
                        doutOutlineColor: Colors.lightGreenAccent,
                        indicatorColor: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: size.width * 0.9,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DiscoverScreen();
                      },
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Text(
                  'EXPLORE THE CITY',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageIndicatorPainter extends CustomPainter {
  PageIndicatorPainter({
    required this.spacing,
    required this.pageCount,
    required this.dotRadius,
    required this.dotOutlineThickness,
    required Color dotFillColor,
    required Color doutOutlineColor,
    required Color indicatorColor,
  })  : dotFillPaint = Paint()..color = dotFillColor,
        dotOutlinePaint = Paint()..color = doutOutlineColor,
        indicatorPaint = Paint()..color = indicatorColor;

  final int pageCount;
  final double dotRadius;
  final double dotOutlineThickness;
  final Paint dotFillPaint;
  final Paint dotOutlinePaint;
  final double spacing;
  final Paint indicatorPaint;
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);
    final double totalWidth =
        (pageCount * (2 * dotRadius)) + ((pageCount - 1) * spacing);

    _drawDots(canvas, center, totalWidth);

    // _drawPageIndicator(canvas, center, totalWidth);
  }

  // void _drawPageIndicator(Canvas canvas, Offset center, double totalWidth) {
  //   canvas.drawRRect(
  //     RRect.fromLTRBR(
  //       center.dx - (totalWidth / 10),
  //       -dotRadius,
  //       (center.dx - (totalWidth / 2)) + (2 * dotRadius),
  //       dotRadius,
  //       Radius.circular(dotRadius),
  //     ),
  //     indicatorPaint,
  //   );
  // }

  _drawDots(Canvas canvas, Offset center, double totalWidth) {
    Offset dotCenter = center.translate((-totalWidth / 2) + dotRadius, 0);
    for (int i = 0; i < pageCount; ++i) {
      _drawDot(canvas, dotCenter);

      dotCenter = dotCenter.translate((2 * dotRadius) + spacing, 0);
    }
  }

  void _drawDot(Canvas canvas, Offset dotCenter) {
    canvas.drawCircle(dotCenter, dotRadius, dotFillPaint);

    Path outlinePath = Path()
      ..addOval(Rect.fromCircle(center: dotCenter, radius: dotRadius))
      ..addOval(Rect.fromCircle(
          center: dotCenter, radius: dotRadius - dotOutlineThickness))
      ..fillType = PathFillType.evenOdd;
    canvas.drawPath(outlinePath, dotOutlinePaint);
  }

  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
