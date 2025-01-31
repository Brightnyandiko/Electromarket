import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Text(
            "Cart",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
        ),
      ),
    );
  }
}
