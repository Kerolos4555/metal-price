import 'package:dio/dio.dart';
import 'package:metal_price/constants/strings.dart';
import 'package:metal_price/secrets/api_key.dart';

Dio createDio() {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {'x-access-token': apiKey, "Content-Type": "application/json"},
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
