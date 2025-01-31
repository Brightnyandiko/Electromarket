import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom Freak",
        price: "400",
        imagePath: "lib/images/zoomfreak.png",
        description: "The forward thinking Design of his latest shoe."
    ),
    Shoe(
        name: "Kyrie 2",
        price: "350",
        imagePath: "lib/images/kyrie.png",
        description: "Bouncy cushioning is paired with soft yet supportive form of resistance."
    ),
    Shoe(
        name: "Air Jordan",
        price: "300",
        imagePath: "lib/images/554-5547469_jordan-transparent-shoe-air-jordan-2012-hd-png.png",
        description: "You've got the hops and speed-lace up in shoes that enhance what you bring to the court."
    ),
    Shoe(
        name: "KD Trey",
        price: "250",
        imagePath: "lib/images/nike-kd-trey-5-x-black-light-crimson.png",
        description: "A secure midfoot strap is suited for scoring binges and defensive stance."
    ),
  ];
  //List of items in user cart
  List<Shoe> usercart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return usercart;
  }

  //add Item to cart
  void addItemToCart(Shoe shoe) {
    usercart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemsFromCart(Shoe shoe) {
    usercart.remove(shoe);
    notifyListeners();
  }
}