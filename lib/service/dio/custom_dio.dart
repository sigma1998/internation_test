import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class CustomDio {
  late Dio dio;

  CustomDio() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://jsonkeeper.com',
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      contentType: 'application/json; charset=utf-8',
    ));

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
    HttpClient()
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;

    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
    ));

  }
}
