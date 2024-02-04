import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/configs/app_theme.dart';
import 'package:instagram_ui/ui/common_blocs/bloc/theme_bloc.dart';
import 'package:instagram_ui/ui/modules/image_and_files/image_and_files_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc()
        ..add(
          ThemeChangeRequested(themeData: AppTheme.lightTheme),
        ),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme:
                state is ThemeChanged ? state.themeData : AppTheme.lightTheme,
            // darkTheme: AppTheme.darkTheme,
            title: 'Flutter Demo',
            // home: const AddDistributedBooksPage(

            // ),
            home: const ImageAndFilePickerScreen(),
          );
        },
      ),
    );
  }
}
