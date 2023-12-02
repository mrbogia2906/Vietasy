import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../food_details_page.dart';
import 'fav_provider.dart';
import 'foods.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final isFavorite = favoritesProvider.isFavorite(food);

    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailScreen(food: food),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
              child: Image.asset(
                food.image,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      food.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text('Cal 235 | 48 min'),
                    const SizedBox(height: 5.0),
                    const SizedBox(height: 5.0),
                    const Text('Medium', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
            // Icon favorite
            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                isFavorite
                    ? favoritesProvider.remove(food)
                    : favoritesProvider.add(food);
              },
            ),
          ],
        ),
      ),
    );
  }
}
