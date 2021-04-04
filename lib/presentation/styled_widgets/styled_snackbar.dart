import 'package:flutter/material.dart';

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
