import 'package:flutter/material.dart';
import '../models/foods.dart';

class FoodDetailScreen extends StatelessWidget {
  final Food food;

  const FoodDetailScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Số lượng tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          titleSpacing: 0,
          leadingWidth: 100,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios, size: 20),
                  Text('Back', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
          title: Text(food.name, style: const TextStyle(fontSize: 20)),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(food.image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 12),
                  Icon(
                    Icons.timer,
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '50min',
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.bar_chart, size: 20),
                  SizedBox(width: 4),
                  Text(
                    'Medium',
                  ),
                  SizedBox(width: 16),
                  Icon(
                    Icons.location_on,
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Nhất Quán",
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.pink.shade300,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(text: 'About'),
                      Tab(text: 'Ingredients'),
                      Tab(text: 'Process'),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    // Tab About
                    SingleChildScrollView(
                      child: Column(
                        children: [Text('Món này ngon')],
                      ),
                    ),
                    // Tab Ingredients
                    SingleChildScrollView(
                      child: Column(
                        children: [Text('Nhiều nguyên liệu vl')],
                      ),
                    ),
                    // Tab Process
                    SingleChildScrollView(
                      child: Column(
                        children: [Text('Cách làm khó vl')],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
