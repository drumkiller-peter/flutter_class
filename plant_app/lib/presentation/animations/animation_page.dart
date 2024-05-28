import 'dart:math' show Random, pi;

import 'package:flutter/material.dart';

class MyAnimationPage extends StatefulWidget {
  const MyAnimationPage({super.key});

  @override
  State<MyAnimationPage> createState() => _MyAnimationPageState();
}

class _MyAnimationPageState extends State<MyAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  double height = 100;
  double width = 300;
  double borderRadius = 12;
  Color color = Colors.red;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation =
        Tween<double>(begin: 0.0, end: 2 * pi).animate(_animationController);
    _animationController.forward();
    super.initState();
  }

  _randomValueSetter() {
    setState(() {
      height = Random().nextInt(400).toDouble();
      width = Random().nextInt(400).toDouble();
      borderRadius = Random().nextInt(100).toDouble();
      color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Animation"),
        ),
        body: Column(
          children: [
            Hero(
              tag: "my-image",
              child: Image.network(
                  "https://img.freepik.com/free-photo/modern-sports-car-speeds-through-dark-curve-generative-ai_188544-9136.jpg"),
            ),
            InkWell(
              onTap: () {
                _randomValueSetter();
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: color,
                ),
                child: Center(
                    child: Text(
                  "Hey",
                  style: Theme.of(context).textTheme.displayLarge,
                )),
              ),
            ),
            Center(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, _) {
                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateZ(_animation.value),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.pinkAccent,
                      child: const Center(
                          child: Icon(
                        Icons.wind_power,
                        size: 40,
                        color: Colors.white,
                      )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
