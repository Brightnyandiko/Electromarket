import 'package:electromarket/models/cart.dart';
import 'package:electromarket/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartItem extends StatefulWidget {
   Shoe shoe;
   CartItem({
     super.key,
     required this.shoe
   });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  //delete items from cart
  // void removeItemFromCart(Cart cart) {
  //   print("before removal: ${cart.userCart.length}");
  //   Provider.of<Cart>(context, listen: false).removeItemsFromCart(widget.shoe);
  //   print("After removal: ${cart.userCart.length}");
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            context.read<Cart>().removeItemsFromCart(widget.shoe);
          },
        ),
      ),
    );
  }
}


// class CartItem extends StatefulWidget {
//   final Shoe shoe;
//   CartItem({super.key, required this.shoe});
//
//   @override
//   State<CartItem> createState() => _CartItemState();
// }
//
// class _CartItemState extends State<CartItem> {
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Image.asset(widget.shoe.imagePath),
//       title: Text(widget.shoe.name),
//       subtitle: Text(widget.shoe.price),
//     );
//   }
// }
