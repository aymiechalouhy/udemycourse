import 'package:flutter/material.dart';
import '../providers/cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(fontSize: 20),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Chip(
                    label: Text(" \$${cart.totalAmount}",
                    style: const TextStyle(color: Colors.white),),
                    backgroundColor: const Color.fromARGB(255, 229, 150, 240),
                  ),
                  MaterialButton(onPressed: (() {}),
                  child: const Text("Order Now", style: TextStyle(
                    color:Colors.purple,
                  ),)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
