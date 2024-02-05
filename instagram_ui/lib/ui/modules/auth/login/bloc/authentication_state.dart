part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationLoadInProgress extends AuthenticationState {}

final class AuthenticationFailure extends AuthenticationState {
  final String message;

  AuthenticationFailure({required this.message});
}

final class AuthenticationSuccess extends AuthenticationState {
  final String message;

  AuthenticationSuccess({required this.message});
}
