// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    super.key,
    required this.noOfItems,
  });

  final int noOfItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Page"),
      ),
      body: Center(
        child: Text("Cart Page $noOfItems"),
      ),
    );
  }
}
