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
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 125,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildPageItem(index);
            }),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    var categoryNames = ['Phở', 'Bún', 'Bánh đa', 'Cơm', 'Miến'];
    var categoryImages = [
      'assets/images/phoga.jpg',
      'assets/images/buncha.jpg',
      'assets/images/banhdacua.jpg',
      'assets/images/comtam.jpg',
      'assets/images/mienluon.jpg'
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(categoryImages[index]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 2),
            child: Text(
              categoryNames[index],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
