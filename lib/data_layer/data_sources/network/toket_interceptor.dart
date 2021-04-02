import 'package:dio/dio.dart';
import 'package:geosocial/common/constants/constatns.dart';

class TokenInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    options.headers["Authorization"] = "Bearer ${Constants.apiKey}";
    return options;
  }

  @override
  Future onError(DioError error) async {
    return super.onError(error);
  }
}
