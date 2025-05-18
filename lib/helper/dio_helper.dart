import 'package:dio/dio.dart';

Dio createDio() {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: '',
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 45),
      receiveTimeout: const Duration(seconds: 45),
    ),
  );
  dio.interceptors.add(
    LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
      requestBody: true,
    ),
  );
  return dio;
}
