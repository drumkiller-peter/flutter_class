// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

enum HomeStateEnum { loading, success, error, sending, sendSuccess }

class HomeState extends Equatable {
  final List<PostModel>? postModel;
  final HomeStateEnum? homeStateEnum;
  final String? errorMessage;

  const HomeState({
    this.postModel,
    this.homeStateEnum,
    this.errorMessage = "",
  });

  @override
  List<Object?> get props => [postModel, homeStateEnum, errorMessage];

  HomeState copyWith({
    List<PostModel>? postModel,
    HomeStateEnum? homeStateEnum,
    String? errorMessage,
  }) {
    return HomeState(
      postModel: postModel ?? this.postModel,
      homeStateEnum: homeStateEnum ?? this.homeStateEnum,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
