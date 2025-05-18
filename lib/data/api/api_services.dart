import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;

  ApiServices({required this.dio});

  Future<Response> getMetalPrice({
    required String metalSymbol,
    required String currencyCode,
  }) async {
    return await dio.get('/$metalSymbol/$currencyCode');
  }
}
