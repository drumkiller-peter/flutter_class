import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:plant_app/configs/constants/api_constants.dart';
import 'package:plant_app/data/cache/news_cache.dart';
import 'package:plant_app/data/db/app_database.dart';
import 'package:plant_app/data/db/news/news_dao.dart';
import 'package:plant_app/data/repository/home_repository.dart';
import 'package:plant_app/data/repository/news_repository.dart';
import 'package:plant_app/data/repository/valorant_repository.dart';
import 'package:plant_app/models/animal.dart';
import 'package:plant_app/services/dio_helper.dart';
import 'package:plant_app/services/fcm_notification_helper.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  await Hive.initFlutter();

  getIt.registerSingleton<FCMNotificationHelper>(FCMNotificationHelper());
  getIt.registerSingleton<AppDatabase>(AppDatabase());
  getIt.registerLazySingleton<NewsDao>(
      () => NewsDao(GetIt.I.get<AppDatabase>()));
  getIt.registerLazySingleton<AnimalRepository>(() => AnimalRepository("dog"));
  getIt.registerFactory<NewAnimalClass>(() => NewAnimalClass(name: "Elephant"));
  getIt.registerSingleton<Dio>(Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 6000),
      receiveTimeout: const Duration(seconds: 6000),
      headers: {
        "Content-Type": "application/json",
      },
    ),
  ));
  getIt.registerSingleton<NewsCache>(NewsCache());
  getIt.registerSingleton<NewsRepository>(NewsRepository());

  getIt.registerSingleton<DioHelper>(DioHelper());
  getIt.registerSingleton<HomeRepository>(HomeRepository());
  getIt.registerSingleton<ValorantRepository>(ValorantRepository());
}
