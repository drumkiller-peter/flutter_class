part of 'home_bloc.dart';

abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadInProgress extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeDataLoadSuccess extends HomeState {
  final int likesCount;

  HomeDataLoadSuccess({required this.likesCount});

  @override
  List<Object?> get props => [likesCount];
}

class HomeDataLoadFailure extends HomeState {
  @override

  List<Object?> get props => throw UnimplementedError();
}


class HomeLikeCountUpdated extends HomeState {
  final int likesCount;

  HomeLikeCountUpdated({required this.likesCount});

  @override
  List<Object?> get props => [likesCount];
}