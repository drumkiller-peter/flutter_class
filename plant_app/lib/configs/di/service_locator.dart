import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_app/configs/constants/app_constatnts.dart';
import 'package:plant_app/models/animal.dart';
import 'package:plant_app/services/dio_helper.dart';

final getIt = GetIt.instance;

void setup() {
  // getIt.registerSingleton<AnimalRepository>(AnimalRepository());
  getIt.registerLazySingleton<AnimalRepository>(() => AnimalRepository("dog"));
  getIt.registerFactory<NewAnimalClass>(() => NewAnimalClass(name: "Elephant"));
  getIt.registerSingleton<Dio>(Dio(
    BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout: const Duration(seconds: 6000),
      receiveTimeout: const Duration(seconds: 6000),
      headers: {"Content-Type": "application/json",
      "Authorization": "Bearer _accessToken",
      },
    ),
  ));

  getIt.registerSingleton<DioHelper>(DioHelper());
}
