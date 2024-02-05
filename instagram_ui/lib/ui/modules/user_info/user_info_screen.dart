import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
      ),
      body: const Column(
        children: [
          Text("Username"),
          Text("Faalna Saalna"),
          Text("Email"),
          Text("abc@gmail.com"),
          Text("Phone"),
          Text("1234567890"),
        ],
      ),
    );
  }
}
