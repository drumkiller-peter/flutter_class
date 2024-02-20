import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_ui/configs/app_theme.dart';
import 'package:instagram_ui/configs/text_theme.dart';
import 'package:instagram_ui/ui/common_blocs/bloc/theme_bloc.dart';
import 'package:instagram_ui/ui/modules/home/bloc/home_bloc.dart';
import 'package:instagram_ui/ui/modules/home/widgets/home_screen_body.dart';
import 'package:instagram_ui/utils/app_snackbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()
        ..add(
          HomeDataRequested(userId: 11),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram'),
          automaticallyImplyLeading: false,
          // leading: const SizedBox(),
          actions: [
            IconButton(
              onPressed: () {
                AppSnackBar.showSnackBar(context, "Hello World!");
              },
              icon: const Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                                Icons.settings_system_daydream_rounded),
                            title: Text(
                              "System Theme",
                              style: AppTextTheme.bodyMedium,
                            ),
                            subtitle: const Text("Switch to system theme"),
                          ),
                          ListTile(
                            onTap: () {
                              context.read<ThemeBloc>().add(
                                  ThemeChangeRequested(
                                      themeData: AppTheme.lightTheme));
                            },
                            leading: const Icon(Icons.light_mode_outlined),
                            title: Text(
                              "Light Theme",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            subtitle: const Text("Switch to light theme"),
                          ),
                          ListTile(
                            onTap: () {
                              context.read<ThemeBloc>().add(
                                  ThemeChangeRequested(
                                      themeData: AppTheme.darkTheme));
                            },
                            leading: const Icon(Icons.dark_mode_outlined),
                            title: Text(
                              "Dark Theme",
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            subtitle: const Text("Switch to dark theme"),
                          ),
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            IconButton(
              onPressed: () async {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ProfileScreen(),
                //   ),
                // );
                // context.go(AppRouter.home + AppRouter.aaddBooksDistributed);
                // context.go("/profile");
                context.go("/login");

                File f = File("jsdjsd/asasas/");
                var bytes = await f.readAsBytes();

                var encodedString = base64Encode(bytes);

                //Shared Prefrence ma save garxau.

                // readFromSharedPrefrence();

                var list = base64Decode(encodedString);

                // Khali file banauxum;
                 File file2 = File("");
                file2.writeAsBytes(list);
                Image.file(f);
              },
              icon: const Icon(Icons.send_outlined),
            ),
          ],
        ),
        body: const HomeScreenBodyWidget(),
      ),
    );
  }
}
