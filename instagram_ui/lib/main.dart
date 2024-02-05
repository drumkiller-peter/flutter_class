import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/configs/app_theme.dart';
import 'package:instagram_ui/ui/common_blocs/bloc/theme_bloc.dart';
import 'package:instagram_ui/ui/modules/auth/login/bloc/authentication_bloc.dart';
import 'package:instagram_ui/ui/modules/auth/login/login_screen.dart';
import 'package:instagram_ui/ui/modules/auth/login/repository/authentication_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthenticationRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeBloc()
              ..add(
                ThemeChangeRequested(themeData: AppTheme.lightTheme),
              ),
          ),
          BlocProvider(
            create: (context) => AuthenticationBloc(
              authenticationRepository:
                  context.read<AuthenticationRepository>(),
            ),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              theme:
                  state is ThemeChanged ? state.themeData : AppTheme.lightTheme,
              // darkTheme: AppTheme.darkTheme,
              title: 'Flutter Demo',
              // home: const AddDistributedBooksPage(

              // ),
              // home: const ImageAndFilePickerScreen(),

              home: const LoginScreen(),
            );
          },
        ),
      ),
    );
  }
}
