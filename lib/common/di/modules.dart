import 'package:dio/dio.dart';
import 'package:geosocial/io/api/custom_dio.dart';
import 'package:injectable/injectable.dart';


@module
abstract class RegisterModule {

  @preResolve
  Future<Dio> get dio => CustomDio.createDio();
}
