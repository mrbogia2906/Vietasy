import 'package:flutter/material.dart';
import 'foods.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Food> _favorites = [];

  List<Food> get favorites => _favorites;

  void add(Food food) {
    if (!_favorites.contains(food)) {
      _favorites.add(food);
      notifyListeners();
    }
  }

  void remove(Food food) {
    if (_favorites.contains(food)) {
      _favorites.remove(food);
      notifyListeners();
    }
  }

  bool isFavorite(Food food) {
    return _favorites.contains(food);
  }
}
