import 'package:dio/dio.dart';
import 'package:geosocial/data_layer/data_sources/local_storage/app_storage.dart';
import 'package:geosocial/data_layer/data_sources/network/custom_dio.dart';
import 'package:geosocial/data_layer/repository/filter_repository.dart';
import 'package:geosocial/data_layer/services/location_service/location_service.dart';
import 'package:geosocial/domain/maps/cubit/map_cubit.dart';
import 'package:geosocial/domain/poi/poi_cubit.dart';

import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @preResolve
  @lazySingleton
  Future<Dio> get dio => CustomDio.createDio();

  @preResolve
  @lazySingleton
  Future<FilterRepository> filterRepository(AppStorage appStorage) =>
      FilterRepositoryImpl.createFilterRepository(appStorage);
}
