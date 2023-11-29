import 'package:flutter/material.dart';
import 'category_body_page.dart';
import 'recommend_body_page.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/vietnamfood.jpg")),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Category"),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: CategoryBodyPage()),
          SliverToBoxAdapter(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommend"),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          RecommendBodyPage(),
        ],
      ),
    );
  }
}
