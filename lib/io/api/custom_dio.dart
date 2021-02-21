import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:geosocial/common/constatns.dart';

import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@lazySingleton
class CustomDio extends DioForNative implements Dio {
  @factoryMethod
  static Future<Dio> createDio() async {
    final Dio dio = Dio();
    dio.options.baseUrl = yelpApiUri;
    dio..interceptors.addAll([PrettyDioLogger(), TokenInterceptor(dio: dio)]);
    return dio;
  }
}

class TokenInterceptor extends InterceptorsWrapper {
  final Dio dio;

  TokenInterceptor({this.dio});

  @override
  Future onRequest(RequestOptions options) async {
    options.headers["Authorization"] = "Bearer $apiKey";
    return options;
  }

  @override
  Future onError(DioError error) async {
    return super.onError(error);
  }
}