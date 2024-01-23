// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final int counter;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int startCounterFrom = 0;

  @override
  void initState() {
    super.initState();

    startCounterFrom = widget.counter;
  }

  @override
  void didUpdateWidget(covariant CounterScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    log(oldWidget.counter.toString());

    setState(() {
      startCounterFrom = 999;
    });

    log(widget.counter.toString());


    
    log("DID update widget is called");
  }

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    log("dispose is called");
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("This is Counter Page"),
        Text("Counter: $startCounterFrom"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              startCounterFrom++;
            });
          },
          child: const Text("Increment"),
        ),
      ],
    );
  }
}
