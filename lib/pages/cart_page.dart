import 'package:electromarket/models/cart.dart';
import 'package:electromarket/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:electromarket/components/cart_item.dart';


class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            const Text(
                "My Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
            ),

            const SizedBox(height: 20),

            Expanded(
                child: ListView.builder(
                    itemCount: cart.userCart.length,
                    itemBuilder: (context, index) {
                      //get individual shoe
                      final individualShoe = cart.userCart[index];

                      //return the cart item
                      return CartItem(shoe: individualShoe);
                    }
                )
            ),
          ],
        ),
      )
    );
  }
}
