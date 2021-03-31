import 'package:flutter/material.dart';

class YelpLogo extends StatelessWidget {
  final double width;
  final double height;

  const YelpLogo({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Image.asset(
        "assets/images/yelp.png",
      ),
    );
  }
}
