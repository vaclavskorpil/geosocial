import 'package:flutter/material.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/data_layer/entities/review.dart';
import 'package:geosocial/presentation/detail/yelp_rating.dart';
import 'package:geosocial/presentation/widgets/custom_network_image.dart';

SnackBar styledSnackBar(String text) => SnackBar(
      margin: const EdgeInsets.all(8.0),
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      content: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
