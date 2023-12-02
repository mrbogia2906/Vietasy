import 'package:flutter/material.dart';

import '../models/foods.dart';

class FoodDetailScreen extends StatefulWidget {
  final Food food;

  const FoodDetailScreen({super.key, required this.food});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  final controller = TextEditingController();
  List<Comment> comments = [
    Comment(
        avatarUrl: 'assets/images/7cho.jpeg',
        username: 'B.O.A.T',
        comment: 'Tôi 1 đời liêm khiết'),
    Comment(
        avatarUrl: 'assets/images/7cho.jpeg',
        username: 'CR7',
        comment: 'SIUUUUUUU'),
    Comment(
        avatarUrl: 'assets/images/7cho.jpeg',
        username: '7 chuồn',
        comment: '7 > 10'),
    Comment(
        avatarUrl: 'assets/images/7cho.jpeg',
        username: '7 chọ',
        comment: "I'm infinity"),
    Comment(
        avatarUrl: 'assets/images/7cho.jpeg',
        username: 'Critiano Ronaldo',
        comment: 'Món này liêm khiết'),
    Comment(
        avatarUrl: 'assets/images/7cho.jpeg',
        username: 'Messi',
        comment: 'Món này ngon'),
    Comment(
        avatarUrl: 'assets/images/7cho.jpeg',
        username: 'Si lùn',
        comment: 'Tôi sẽ dẫn cả nhà ra đây ăn'),
    Comment(
        avatarUrl: 'assets/images/7cho.jpeg',
        username: 'M10',
        comment: '7 > 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Số lượng tabs
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
          title: Text(widget.food.name, style: const TextStyle(fontSize: 20)),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.food.image),
                  ),
                ),
              ),
            ), //1
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.food.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ), //2
            SliverToBoxAdapter(
              child: Row(
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
            ), //3
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 15, right: 15),
                child: Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: TabBar(
                    labelPadding: const EdgeInsets.all(0),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: const Color.fromRGBO(240, 94, 129, 1),
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(
                        text: 'About',
                      ),
                      Tab(text: 'Process'),
                      Tab(text: 'Address'),
                      Tab(
                        text: "Comment",
                      )
                    ],
                  ),
                ),
              ),
            ), //4
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  // Tab About
                  SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        children: [
                          Text(widget.food.about),
                          // Text(
                          //     "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. "
                          //     "\n\nIf you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
                          //     "\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."),
                        ],
                      ),
                    ),
                  ),
                  // Tab Process
                  SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        children: [
                          Text(widget.food.process),
                          // Text(
                          //     "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. "
                          //     "\n\nIf you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
                          //     "\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."),
                        ],
                      ),
                    ),
                  ),
                  // Tab Address
                  SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        children: [
                          Text(widget.food.address),
                          // Text(
                          //     "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. "
                          //     "\n\nIf you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
                          //     "\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."),
                        ],
                      ),
                    ),
                  ),
                  // Tab Comment
                  Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 60, left: 15),
                              child: ListView.builder(
                                  itemCount: 8,
                                  itemBuilder: (context, index) {
                                    return buildWidgetComment(
                                      comments[index].avatarUrl,
                                      comments[index].username,
                                      comments[index].comment,
                                    );
                                  }),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 15,
                              right: 0,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: controller,
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade200,
                                          hintText: 'Write comment',
                                          hintStyle:
                                              const TextStyle(fontSize: 14),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 10),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          )),
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.send),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildWidgetComment(String avatarUrl, String username, String comment) {
    return Container(
      width: 300,
      height: 60,
      margin: const EdgeInsets.only(bottom: 19),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avatarUrl),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.only(left: 10, top: 5),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade200,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(comment)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Comment {
  final String avatarUrl;
  final String username;
  final String comment;

  Comment(
      {required this.avatarUrl, required this.username, required this.comment});
}
