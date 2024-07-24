// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/components/cart_item.dart';
import 'package:minimal_ecommerce/models/cart_models.dart';
import 'package:minimal_ecommerce/models/shoe_models.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index) {
                            // get individual items
                            Shoe individualShoe = value.getUserCart()[index];

                            // returning cart items
                            return CartItem(
                              shoe: individualShoe,
                            );
                          }))
                ],
              ),
            ));
  }
}
