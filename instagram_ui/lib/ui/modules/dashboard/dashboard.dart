import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_ui/configs/router/app_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          context.go("${AppRouter.dashboard}/${AppRouter.dummy1}");
        },
        child: const Center(
          child: Text("Dashboard Page"),
        ),
      ),
    );
  }
}
