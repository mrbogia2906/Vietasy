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
