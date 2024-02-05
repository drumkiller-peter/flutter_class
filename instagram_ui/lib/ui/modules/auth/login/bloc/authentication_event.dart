part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}


final class AuthenticationLoginRequested extends AuthenticationEvent {
  final String email;
  final String password;

  AuthenticationLoginRequested({required this.email, required this.password});
}


