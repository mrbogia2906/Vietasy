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
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          if (index < foods.length) {
            final item = foods[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodDetailScreen(food: item)),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item.image),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
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
