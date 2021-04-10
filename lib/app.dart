import 'package:flutter/material.dart';
import 'package:whereisthefood/presentation/home/home_page.dart';
import 'package:whereisthefood/presentation/theme/theme.dart';

class whereisthefoodApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'whereisthefood app',
      theme: whereisthefoodTheme,
      home: HomePage(),
    );
  }
}
