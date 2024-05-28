import 'package:get_it/get_it.dart';
import 'package:plant_app/models/animal.dart';

final getIt = GetIt.instance;

void setup() {
  // getIt.registerSingleton<AnimalRepository>(AnimalRepository());
  getIt.registerLazySingleton<AnimalRepository>(() => AnimalRepository("dog"));
  getIt.registerFactory<NewAnimalClass>(() => NewAnimalClass(name: "Elephant"));
}
