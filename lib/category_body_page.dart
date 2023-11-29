import 'package:flutter/cupertino.dart';
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
    return Container(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, possition){
            return _buildPageItem(possition);
          }),
    );
  }
  Widget _buildPageItem(int index){
    var categoryNames = ['Pho', 'Bun', 'My','Gio','Cha']; // Tên các category
    var categoryImages = ['assets/images/pho.jpeg', 'assets/images/pho.jpeg', 'assets/images/pho.jpeg', 'assets/images/pho.jpeg', 'assets/images/pho.jpeg']; // Hình ảnh
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchScreen(initialSearch: categoryNames[index]),
          ),
        );
      },
      child: Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.only(left: 5, right: 5),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10),
        //   color: Colors.white,
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(categoryImages[index], height: 60,),
            Text(categoryNames[index]),
          ],
        ),
      ),
    );
  }
}
