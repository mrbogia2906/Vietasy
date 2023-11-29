import 'package:flutter/material.dart';
import 'package:vietasy/models/foods.dart';
import 'package:vietasy/food_details_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, this.initialSearch = ''});

  final String initialSearch;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();
  List<Food> foods = allFoods;

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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'food search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  )),
              onChanged: searchFood,
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    final food = foods[index];

                    return ListTile(
                      leading: Image.asset(
                        food.image,
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      title: Text(food.name),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FoodDetailScreen(
                                    food: food,
                                  ))),
                    );
                  })),
        ],
      ),
    );
  }

  void searchFood(String query) {
    final suggestions = allFoods.where((food) {
      final foodName = food.name.toLowerCase();
      final input = query.toLowerCase();
      return foodName.contains(input);
    }).toList();

    setState(() => foods = suggestions);
  }
}
