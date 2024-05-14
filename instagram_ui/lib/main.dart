import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/configs/app_theme.dart';
import 'package:instagram_ui/configs/router/app_router.dart';
import 'package:instagram_ui/firebase_options.dart';
import 'package:instagram_ui/ui/common_blocs/bloc/theme_bloc.dart';
import 'package:instagram_ui/ui/modules/auth/login/bloc/authentication_bloc.dart';
import 'package:instagram_ui/ui/modules/auth/login/repository/authentication_repository.dart';
import 'package:instagram_ui/ui/modules/event/bloc/event_bloc.dart';
import 'package:instagram_ui/ui/modules/event/event_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthenticationRepository(),
        ),
        RepositoryProvider(
          create: (context) => EventRepository(),
        ),
        RepositoryProvider(
          create: (context) => AppRouter(),
        ),
      ],
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
          BlocProvider(
            create: (context) => EventBloc(
              eventRepository: context.read<EventRepository>(),
            )..add(GetEvent()),
          ),
        ],
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          title: 'Flutter Demo',
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
