import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vietasy/food_details_page.dart';

import '../models/food_provider.dart';

class RecommendBodyPage extends StatefulWidget {
  const RecommendBodyPage({super.key});

  @override
  State<RecommendBodyPage> createState() => _RecommendBodyPageState();
}

class _RecommendBodyPageState extends State<RecommendBodyPage> {
  final List<FoodItem> foodItems = [
    FoodItem(name: 'Món Ăn 1', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 2', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 3', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 4', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 5', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 6', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 7', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 8', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 9', imageUrl: 'assets/images/pho.jpeg'),
    FoodItem(name: 'Món Ăn 10', imageUrl: 'assets/images/pho.jpeg'),
    // ... thêm các FoodItem khác
  ];

  @override
  Widget build(BuildContext context) {
    final foodProvider = Provider.of<FoodProvider>(context);
    final foods = foodProvider.foods;

    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          if (index < foods.length) {
            final item = foods[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodDetailScreen(food: item)),
                );
              },
              child: Card(
                child: Column(
                  children: [
                    Image.asset(item.image),
                    Text(item.name),
                  ],
                ),

              ),
            );
          }
          return null;
        },
        childCount: foods.length,
      ),
    );
  }
}

class FoodItem {
  final String name;
  final String imageUrl;

  FoodItem({required this.name, required this.imageUrl});
}
