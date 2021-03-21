import 'package:flutter/material.dart';
import 'package:geosocial/app.dart';
import 'package:geosocial/common/constants/constatns.dart';
import 'package:geosocial/datalayer/dependenci_injection/injector.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  configureDependencies();
  print('Starting app');

  await _initHive();

  runApp(GeosocialApp());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  await Hive.openBox('graphqlClientStore');
  await Hive.openBox(Constants.filterBox);
}
