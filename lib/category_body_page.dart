import 'package:flutter/material.dart';
import 'package:vietasy/search_screen.dart';

class CategoryBodyPage extends StatefulWidget {
  const CategoryBodyPage({super.key});

  @override
  State<CategoryBodyPage> createState() => _CategoryBodyPageState();
}

class _CategoryBodyPageState extends State<CategoryBodyPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return _buildPageItem(index);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    var categoryNames = ['Phở', 'Bún', 'Mỳ', 'Giò', 'Chả'];
    var categoryImages = [
      'assets/images/pho.jpeg',
      'assets/images/pho.jpeg',
      'assets/images/pho.jpeg',
      'assets/images/pho.jpeg',
      'assets/images/pho.jpeg'
    ];
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                SearchScreen(initialSearch: categoryNames[index]),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(categoryImages[index]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              categoryNames[index],
            ),
          ),
        ],
      ),
    );
  }
}
