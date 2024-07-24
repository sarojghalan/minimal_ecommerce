import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/models/shoe_models.dart';

class Cart extends ChangeNotifier {
  // list fo items for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '336',
        imagePath: 'lib/images/nike1.png',
        desc: "The forward-thinking design of his latest signature shoe"),
    Shoe(
        name: 'Air Jordans',
        price: '156',
        imagePath: 'lib/images/nike2.png',
        desc:
            "You\'ve got the hops and the speed-lace up in the shoes that enhance."),
    Shoe(
        name: 'KD Treys',
        price: '4221',
        imagePath: 'lib/images/nike3.png',
        desc:
            "A secure midfoot strap is suited for scoring binges and defensive"),
    Shoe(
        name: 'Kyrie 6',
        price: '198',
        imagePath: 'lib/images/nike4.png',
        desc:
            "Bouncy cushioning is paired with soft yet supportive foam for rest"),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
