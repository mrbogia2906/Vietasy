import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/fav_provider.dart';
import 'models/food_card_search.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<FavoritesProvider>(context).favorites;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Favorites"),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          return FoodCard(food: favorites[index]);
        },
      ),
    );
  }
}
