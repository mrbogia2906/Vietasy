import 'package:flutter/material.dart';

import '../models/foods.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Chi tiet mon an"),
      ),
      body: Column(
        children: [
          Text(food.name),
          Image.asset(
            food.image,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
