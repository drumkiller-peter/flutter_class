import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/configs/di/service_locator.dart';
import 'package:plant_app/data/repository/home_repository.dart';
import 'package:plant_app/models/home/post_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEventLoadInitialDataRequested>((event, emit) async {
      try {
        emit(state.copyWith(
          homeStateEnum: HomeStateEnum.loading,
          errorMessage: "",
        ));
        final response = await homeRepository.getHomeScreenData();
        emit(
          state.copyWith(
            homeStateEnum: HomeStateEnum.success,
            postModel: response,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(homeStateEnum: HomeStateEnum.error),
        );
      }
    });

    on<HomeEventAddPostRequested>((event, emit) async {
      try {
        emit(state.copyWith(homeStateEnum: HomeStateEnum.sending));
        final response = await homeRepository.addPost(event.postModel);
        if (response == ResponseTypeEnum.success) {
          emit(state.copyWith(homeStateEnum: HomeStateEnum.sendSuccess));
        } else {
          emit(state.copyWith(homeStateEnum: HomeStateEnum.error));
        }
      } catch (e) {
        emit(
          state.copyWith(
            homeStateEnum: HomeStateEnum.error,
            errorMessage: e.toString(),
          ),
        );
      }
    });
    on<HomeEventDeleteDataRequested>((event, emit) async {
      try {
        emit(state.copyWith(homeStateEnum: HomeStateEnum.sending));
        final response = await homeRepository.deletePost(event.id);
        if (response == ResponseTypeEnum.success) {
          emit(state.copyWith(homeStateEnum: HomeStateEnum.sendSuccess));
        } else {
          emit(state.copyWith(homeStateEnum: HomeStateEnum.error));
        }
      } catch (e) {
        emit(
          state.copyWith(
            homeStateEnum: HomeStateEnum.error,
            errorMessage: e.toString(),
          ),
        );
      }
    });
  }

  final HomeRepository homeRepository = getIt.get<HomeRepository>();
}
