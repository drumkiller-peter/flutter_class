// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {}

// k vayo ta??

class HomeDataRequested extends HomeEvent {
  final int userId;

  HomeDataRequested({required this.userId});

  @override
  List<Object?> get props => [userId];
}

class HomeLikeCountIncrementRequested extends HomeEvent {
  final int likesCount;
  HomeLikeCountIncrementRequested({
    required this.likesCount,
  });
  @override
  List<Object?> get props => [];
}
