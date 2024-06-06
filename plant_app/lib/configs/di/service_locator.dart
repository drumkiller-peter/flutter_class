import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_app/configs/constants/api_constants.dart';
import 'package:plant_app/configs/constants/app_constatnts.dart';
import 'package:plant_app/data/repository/home_repository.dart';
import 'package:plant_app/data/repository/valorant_repository.dart';
import 'package:plant_app/models/animal.dart';
import 'package:plant_app/services/dio_helper.dart';

final getIt = GetIt.instance;

void setup() {
  // getIt.registerSingleton<AnimalRepository>(AnimalRepository());
  getIt.registerLazySingleton<AnimalRepository>(() => AnimalRepository("dog"));
  getIt.registerFactory<NewAnimalClass>(() => NewAnimalClass(name: "Elephant"));
  getIt.registerSingleton<Dio>(Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 6000),
      receiveTimeout: const Duration(seconds: 6000),
      headers: {
        "Content-Type": "application/json",
        "Authorization": AppConstants.vKey,
      },
    ),
  ));

  getIt.registerSingleton<DioHelper>(DioHelper());
  getIt.registerSingleton<HomeRepository>(HomeRepository());
  getIt.registerSingleton<ValorantRepository>(ValorantRepository());
}
