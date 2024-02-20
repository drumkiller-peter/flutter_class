// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Dummy2 extends StatelessWidget {
  const Dummy2({
    Key? key,
    required this.someDummyModel,
    required this.isMale,
  }) : super(key: key);

  final SomeDummyModel someDummyModel;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("${someDummyModel.id} ${someDummyModel.name} $isMale"),
      ),
    );
  }
}

class SomeDummyModel {
  final int id;
  final String name;

  SomeDummyModel({required this.id, required this.name});
}
