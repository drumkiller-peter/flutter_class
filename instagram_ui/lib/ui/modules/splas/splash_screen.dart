import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_ui/configs/app_colors.dart';
import 'package:instagram_ui/configs/router/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    goToBottomNavPage();
  }

  void goToBottomNavPage() async {
    await Future.delayed(const Duration(seconds: 2), () {
      context.go(AppRouter.dashboard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your logo or image here
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/images/img_1.png"),
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 24, color: AppColor.white),
            ),
          ],
        ),
      ),
    );
  }
}
