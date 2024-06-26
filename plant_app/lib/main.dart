import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/configs/di/service_locator.dart';
import 'package:plant_app/configs/router/app_router.dart';
import 'package:plant_app/firebase_options.dart';
import 'package:plant_app/services/fcm_notification_helper.dart';
import 'package:uuid/uuid.dart';

Uuid uuid = const Uuid();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setup();
  getIt.get<FCMNotificationHelper>().init();
  onBgMessage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple[300]!),
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
