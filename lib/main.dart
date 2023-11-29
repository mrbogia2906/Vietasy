import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_app.dart';
import 'models/food_provider.dart';
// Import MainApp

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FoodProvider()),
        // Thêm các Provider khác ở đây
      ],
      child: MainApp(),
    ),
  );
}
