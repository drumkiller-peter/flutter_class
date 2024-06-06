part of 'home_bloc.dart';

abstract class HomeEvent {}

class HomeEventLoadInitialDataRequested extends HomeEvent {}

class HomeEventDeleteDataRequested extends HomeEvent {
  final int id;

  HomeEventDeleteDataRequested({required this.id});
}

class HomeEventAddPostRequested extends HomeEvent {
  final PostModel postModel;

  HomeEventAddPostRequested({required this.postModel});
}
