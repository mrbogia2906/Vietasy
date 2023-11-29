import 'package:flutter/material.dart';
import 'foods.dart';

class FoodProvider with ChangeNotifier {
  List<Food> _foods = allFoods;

  List<Food> get foods => _foods;

  void setFoods(List<Food> foods) {
    _foods = foods;
    notifyListeners();
  }
}
