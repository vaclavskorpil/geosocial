import 'package:flutter/material.dart';

class YelpRating extends StatelessWidget {
  final double rating;
  final double width;
  const YelpRating({@required this.rating, @required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Image.asset(_getImageAssetString()),
    );
  }

  String _getImageAssetString() {
    var sb = StringBuffer('assets/images/stars/stars_regular_');
    if (rating < 1) {
      sb.write('0.png');
    } else if (rating < 1.5) {
      sb.write('1.png');
    } else if (rating < 2) {
      sb.write('1_half.png');
    } else if (rating < 2.5) {
      sb.write('2.png');
    } else if (rating < 3) {
      sb.write('2_half.png');
    } else if (rating < 3.5) {
      sb.write('3.png');
    } else if (rating < 4) {
      sb.write('4_half.png');
    } else if (rating < 4.5) {
      sb.write('4.png');
    } else if (rating < 4.9) {
      sb.write('4_half.png');
    } else {
      sb.write('5.png');
    }
    print("ImageString ${sb.toString()}");
    return sb.toString();
  }
}
