import 'package:get_it/get_it.dart';
import 'package:instagram_ui/ui/modules/event/bloc/event_bloc.dart';
import 'package:instagram_ui/ui/modules/event/event_repo.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<EventRepository>(EventRepository());
  
  getIt.registerSingleton<EventBloc>(EventBloc());

}





