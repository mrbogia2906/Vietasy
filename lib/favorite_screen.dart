import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/fav_provider.dart';
import 'models/food_card_search.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<FavoritesProvider>(context).favorites;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Favorites", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
        child: ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (context, index) {
            return FoodCard(food: favorites[index]);
          },
        ),
      ),
    );
  }
}
