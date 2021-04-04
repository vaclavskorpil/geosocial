import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geosocial/data_layer/entities/category.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dartz/dartz.dart';

class CustomBitmapDescriptors {
  CustomBitmapDescriptors._();

  static Future<BitmapDescriptor> getFromSupportedCategory(
      Tuple3<Category, IconData, Color> supportedCategory) {
    return bitmapDescriptorFromIcon(
        supportedCategory.value2, supportedCategory.value3);
  }

  static Future<BitmapDescriptor> bitmapDescriptorFromIcon(
      IconData icon, Color color) async {
    final pictureRecorder = PictureRecorder();
    final canvas = Canvas(pictureRecorder);
    final textPainter = TextPainter(textDirection: TextDirection.ltr);

    final pictureWidth = 60;
    final pictureHeight = 80;
    //draws icon onto a canvas with specified color, offset fontsize
    void _drawIcon(IconData icon, Color color, bool center, double fontSize) {
      final iconStr = String.fromCharCode(icon.codePoint);

      textPainter.text = TextSpan(
          text: iconStr,
          style: TextStyle(
            letterSpacing: 0.0,
            fontSize: fontSize,
            fontFamily: icon.fontFamily,
            package: icon.fontPackage,
            color: color,
          ));

      textPainter.layout();
      var offset = Offset.zero;
      if (center) {
        final size = textPainter.size;
        final ox = (pictureWidth - size.width) / 2.4;
        final oy = (pictureHeight - size.height) / 3.2;

        offset = Offset(ox, oy);
      }
      textPainter.paint(canvas, offset);
    }

    //draw marker icon
    _drawIcon(
        icon != null
            ? FontAwesomeIcons.mapMarker
            : FontAwesomeIcons.mapMarkerAlt,
        color,
        false,
        75);

    if (icon != null) {
      _drawIcon(icon, Colors.white, true, 34);
    }

    final picture = pictureRecorder.endRecording();
    final image = await picture.toImage(pictureWidth, pictureHeight);
    final bytes = await image.toByteData(format: ImageByteFormat.png);
    final bitmapDescriptor =
        BitmapDescriptor.fromBytes(bytes.buffer.asUint8List());

    return bitmapDescriptor;
  }
}
