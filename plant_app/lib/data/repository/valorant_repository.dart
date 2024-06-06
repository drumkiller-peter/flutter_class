import 'package:dio/dio.dart';
import 'package:plant_app/configs/di/service_locator.dart';
import 'package:plant_app/models/valorant_models/account_model.dart';

class ValorantRepository {
  Future<VAccountModel?> getValorantUserData(String name, String tag) async {
    try {
      final response = await _dio.get("/v1/account/$name/$tag");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return VAccountModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      // rethrow;
      print("Error:::::::::::::::::: $e");
    }
    return null;
  }


  final Dio _dio = getIt.get<Dio>();
}
