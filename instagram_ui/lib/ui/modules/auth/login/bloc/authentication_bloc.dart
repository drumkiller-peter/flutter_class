import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/ui/modules/auth/login/repository/authentication_repository.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required this.authenticationRepository})
      : super(AuthenticationInitial()) {
    on<AuthenticationLoginRequested>((event, emit) async {
      emit(AuthenticationLoadInProgress());

      // afno logic
      await Future.delayed(const Duration(seconds: 2));

      emit(AuthenticationSuccess(message: "Login Success"));
    });
  }

  AuthenticationRepository authenticationRepository;
}
