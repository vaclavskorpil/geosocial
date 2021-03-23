import 'package:dio/dio.dart';
import 'package:geosocial/data_layer/data_sources/local_storage/app_storage.dart';
import 'package:geosocial/data_layer/data_sources/network/custom_dio.dart';
import 'package:geosocial/data_layer/repository/filter_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<Dio> get dio => CustomDio.createDio();

  @preResolve
  Future<FilterRepository> createFilterRepository(AppStorage appStorage) =>
      FilterRepositoryImpl.createFilterRepository(appStorage);
}
