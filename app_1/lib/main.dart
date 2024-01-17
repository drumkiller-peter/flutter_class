import 'package:app_1/ui/modules/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
      //   useMaterial3: true,
      // ),
      home: MyWidget(),
    );
  }
}



// final,

// const,