import 'package:flutter/material.dart';
import 'package:geosocial/app.dart';
import 'package:geosocial/common/constants/constatns.dart';
import 'package:geosocial/data_layer/entities/category.dart';
import 'package:geosocial/data_layer/entities/filter_dto.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data_layer/dependenci_injection/injector.dart';

void main() async {
  print('Starting app');

  await _initHive();
  await configureDependencies();

  runApp(GeosocialApp());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FilterDTOAdapter());
  Hive.registerAdapter(CategoryAdapter());

  await Hive.openBox('graphqlClientStore');
  await Hive.openBox(Constants.filterBox);
}
