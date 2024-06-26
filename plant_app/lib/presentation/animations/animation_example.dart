import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimationExample extends StatefulWidget {
  const AnimationExample({super.key});

  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample>
    with SingleTickerProviderStateMixin {
  double height = 20;
  double width = 20;
  double radius = 12;
  double opacity = 1;

  void _genRandomValues() {
    setState(() {
      height = Random().nextInt(400).toDouble();
      width = Random().nextInt(400).toDouble();
      radius = Random().nextInt(100).toDouble();
      opacity = opacity == 0 ? 1 : 0;
    });
  }

  late AnimationController animationController;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation =
        Tween<double>(begin: 0.0, end: 2 * pi).animate(animationController);


    animationController.forward();
  }

  @override
  void dispose() {
    animationController.stop();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Example"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // _genRandomValues();
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 2),
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.push("/animation");
            },
            child: Hero(
              tag: "my-image",
              child: Image.network(
                  "https://img.freepik.com/free-photo/modern-sports-car-speeds-through-dark-curve-generative-ai_188544-9136.jpg"),
            ),
          ),
          AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(seconds: 1),
            child: const Text(
              "This is animated Text",
              style: TextStyle(fontSize: 40),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnimatedBuilder(
            animation: animationController,
            builder: (context, child) {
              return Transform(
                alignment: Alignment.center,
                // origin: const Offset(40, 40),
                transform: Matrix4.identity()..rotateZ(_animation.value),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.greenAccent,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


// animtionController == [0-1]
// Tween ===> Between 0 and 360