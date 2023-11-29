import 'package:flutter/material.dart';
import '../models/foods.dart';

class FoodDetailScreen extends StatelessWidget {
  final Food food;

  FoodDetailScreen({Key? key, required this.food}) : super(key: key);

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
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios, size: 20),
                  Text('Back', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
          title: Text(food.name, style: TextStyle(fontSize: 20)),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
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
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(food.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 12),

                Icon(Icons.timer, size: 20,),
                SizedBox(width: 4),
                Text('50min',),

                SizedBox(width: 16),

                Icon(Icons.bar_chart, size: 20),
                SizedBox(width: 4),
                Text('Medium',),

                SizedBox(width: 16),

                Icon(Icons.location_on, size: 20,),
                SizedBox(width: 4),
                Text("Nhất Quán",),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: Colors.pink.shade400,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: 'About'),
                  Tab(text: 'Ingredients'),
                  Tab(text: 'Process'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Tab About
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text('Món này ngon')
                      ],
                    ),
                  ),
                  // Tab Ingredients
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text('Nhiều nguyên liệu vl')
                      ],
                    ),
                  ),
                  // Tab Process
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text('Cách làm khó vl')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
