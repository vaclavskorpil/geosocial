import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyColors {
  MyColors._();

  static const Color blue2 = Color(0x2D9CDB);
  static final backgroundWhite = Colors.grey.shade100;
  static const Color darkShadow = Color(0xa3b1c6);

  static const shimmerGradient = LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
}
