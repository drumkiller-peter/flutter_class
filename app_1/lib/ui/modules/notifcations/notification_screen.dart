import 'dart:developer';

import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String screenName = "NNN";
  String dashDash = "DashDash";

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    log("I am init state");
    screenName = "WWWW";
    super.initState();
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   var someVal =1;
  // }

  @override
  void didUpdateWidget(covariant NotificationScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
    log("I am dispose");
    _controller.dispose();
  }

  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Colors.red),
  );

  setBorder(Color borderColor) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: borderColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Screen"),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is $screenName Screen"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    screenName = "Notification";
                    log("screen name is $screenName");
                  });
                },
                child: const Text("Change Screen Name"),
              ),
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                    prefix: const Icon(Icons.password),
                    labelText: "Enter your password",
                    hintText: "Enter your name",
                    suffix: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                        ))),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      prefix: const Icon(Icons.password),
                      labelText: "Enter your password",
                      hintText: "Enter your name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      suffix: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_red_eye,
                          ))),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your name";
                  }

                  return null;
                },

                // hello 
                // ! Hello 
                //* Alik green
                decoration: InputDecoration(
                  fillColor: Colors.amber,
                  filled: true,
                  prefix: const Icon(Icons.password),
                  labelText: "Enter your password",
                  hintText: "Enter your name",
                  errorBorder: border,
                  focusedErrorBorder: setBorder(Colors.black),
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  log(_controller.text);
                  log(_nameController.text);
                  log(_emailController.text);

                  if (_formKey.currentState!.validate()) {
                    // send data to backend
                  }
                },
                child: const Text(
                  "Save",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
