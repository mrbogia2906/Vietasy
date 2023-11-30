import 'package:flutter/material.dart';
import 'package:vietasy/carousel_with_dots.dart';
import 'category_body_page.dart';
import 'recommend_body_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = ["assets/images/vietnamfood.jpg"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Vietasty"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CarouselWithDots(imgList: imgList)
                // child: Container(
                //   height: 200,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(30),
                //     image: const DecorationImage(
                //         fit: BoxFit.cover,
                //         image: AssetImage("assets/images/vietnamfood.jpg")),
                //   ),
                // ),
                ),
            const SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    child: Text("Category",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
            ),
            const SliverToBoxAdapter(child: CategoryBodyPage()),
            const SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    child: Text("Recommended",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ),
            const RecommendBodyPage(),
          ],
        ),
      ),
    );
  }
}
