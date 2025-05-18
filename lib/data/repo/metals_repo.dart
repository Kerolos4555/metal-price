import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:metal_price/data/api/api_services.dart';
import 'package:metal_price/data/model/metal_model.dart';
import 'package:metal_price/error/network_error.dart';

class MetalsRepo {
  final ApiServices apiServices;
  MetalsRepo({required this.apiServices});

  Future<Either<NetworkError, MetalModel>> getMetalDetails({
    required String symbol,
    required String code,
  }) async {
    try {
      var response = await apiServices.getMetalPrice(
        metalSymbol: symbol,
        currencyCode: code,
      );
      return right(MetalModel.fromJson(response.data));
    } on DioException catch (error) {
      return left(ServerError.fromDioException(error));
    } catch (error) {
      return left(ServerError(errorMessage: error.toString()));
    }
  }
}
