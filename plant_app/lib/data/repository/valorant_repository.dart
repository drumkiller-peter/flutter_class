import 'package:dio/dio.dart';
import 'package:plant_app/configs/di/service_locator.dart';
import 'package:plant_app/models/error/error_model.dart';
import 'package:plant_app/models/valorant_models/account_model.dart';

class ValorantRepository {
  Future<VAccountModel?> getValorantUserData(String name, String tag) async {
    try {
      final response = await _dio.get("apple/v1/account/$name/$tag");
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return VAccountModel.fromJson(response.data);
      }
      return null;
    } on DioException catch (e) {
      throw ErrorModel.fromJson(e.response?.data);
    }
  }

  final Dio _dio = getIt.get<Dio>();
}
