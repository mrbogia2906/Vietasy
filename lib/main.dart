import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_app.dart';
import 'models/fav_provider.dart';
import 'models/food_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FoodProvider()),
        ChangeNotifierProvider(create: (context) => FavoritesProvider()),
        // Thêm các Provider khác ở đây
      ],
      child: MainApp(),
    ),
  );
}
