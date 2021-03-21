import 'package:dio/dio.dart';
import 'package:geosocial/datalayer/data_providers/api/custom_dio.dart';
import 'package:injectable/injectable.dart';


@module
abstract class RegisterModule {

  @preResolve
  Future<Dio> get dio => CustomDio.createDio();
}
