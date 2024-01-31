import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

// Main business logic component for the HomeScreen
// K garne ta??
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeDataRequested>((event, emit) async {
      emit(HomeLoadInProgress());
      await Future.delayed(const Duration(seconds: 2));
      emit(HomeDataLoadSuccess(likesCount: likesCount));
    });

    on<HomeLikeCountIncrementRequested>((event, emit) {
      var newLikeCount = event.likesCount + 1;
      emit(HomeLikeCountUpdated(likesCount: newLikeCount));
      emit(HomeDataLoadSuccess(likesCount: newLikeCount));
    });
  }

  int likesCount = 100;
}
