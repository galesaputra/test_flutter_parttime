import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class DioModule with DioMixin implements Dio {
  DioModule._() {
    options = BaseOptions(
      contentType: 'application/json',
      connectTimeout: 30 * 1000,
      sendTimeout: 30 * 1000,
      receiveTimeout: 30 * 1000,
      followRedirects: true,
      receiveDataWhenStatusError: true,
    );

    interceptors
      .add(LogInterceptor());

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => DioModule._();
}
