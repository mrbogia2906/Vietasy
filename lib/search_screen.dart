import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:vietasy/models/foods.dart';

import 'models/food_card_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, this.initialSearch = ''});

  final String initialSearch;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();
  List<Food> foods = allFoods;
  bool hasSearchResult = true;

  @override
  void initState() {
    super.initState();
    controller.text = widget.initialSearch;
    searchFood(widget.initialSearch);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Search"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                controller: controller,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
                onChanged: searchFood,
              ),
            ),
            Expanded(
              child: hasSearchResult
                  ? ListView.builder(
                      itemCount: foods.length,
                      itemBuilder: (context, index) {
                        final food = foods[index];
                        return FoodCard(food: food);
                      },
                    )
                  : Center(
                      child: Text('Không tìm thấy món ăn phù hợp.'),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void searchFood(String query) {
    final suggestions = allFoods.where((food) {
      final foodName = removeDiacritics(food.name).toLowerCase();
      final input = removeDiacritics(query).toLowerCase();
      return foodName.contains(input);
    }).toList();

    setState(() {
      foods = suggestions;
      hasSearchResult = foods.isNotEmpty; // update
    });
  }
}
