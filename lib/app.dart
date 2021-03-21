import 'package:flutter/material.dart';
import 'package:geosocial/presentation/home/home_page.dart';
import 'package:geosocial/presentation/theme/theme.dart';

class GeosocialApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeoSocial app',
      theme: geosocialTheme,
      home: HomePage(),
    );
  }
}