import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;

  static Dio getDio() {
    Duration connectTimeout = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = connectTimeout
        ..options.receiveTimeout = connectTimeout;
      AddDioInterCeptor();
      return dio!;
    }
    return dio!;
  }

  // ignore: non_constant_identifier_names
  static void AddDioInterCeptor() {
    dio?.interceptors.add(PrettyDioLogger(
      requestBody: true,
      responseHeader: true,
      requestHeader: true,
    ));
  }
}
