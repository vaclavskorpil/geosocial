import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:geosocial/common/constants/constatns.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'toket_interceptor.dart';

class CustomDio extends DioForNative implements Dio {
  static Future<Dio> createDio() async {
    final Dio dio = Dio();
    dio.options.baseUrl = Constants.yelpApiUri;
    dio
      ..interceptors.addAll([
        PrettyDioLogger(),
        TokenInterceptor(),
      ]);
    return dio;
  }
}
