import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/ui/modules/home/bloc/home_bloc.dart';
import 'package:instagram_ui/ui/modules/home/widgets/home_screen_body.dart';
import 'package:instagram_ui/ui/modules/profile/profile_screen.dart';
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
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
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
