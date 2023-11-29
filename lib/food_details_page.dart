import 'package:flutter/material.dart';

import '../models/foods.dart';

class FoodDetailScreen extends StatelessWidget {
  final Food food;

  const FoodDetailScreen({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chi tiet mon an"),
      ),
      body: Column(
        children: [
          Text(food.name),
          Image.asset(food.image, fit: BoxFit.cover,),
        ],
      ),
    );
  }
}

