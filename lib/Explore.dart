import 'package:exam_app/beverajes.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
  ];

  List<String> text = [
    "Frash Fruits\n& Vegetable",
    "Cooking Oil\n& Ghee",
    "Meat & Fish",
    "Bakery & Snacks",
    "Dairy & Eggs",
    "Beverages"
  ];
  List<String> surato = [
    "images/pngfuel 6.png",
    "images/pngfuel 8.png",
    "images/pngfuel 9.png",
    "images/pngfuel 6 (1).png",
    "images/pngfuel.png",
    "images/pngfuel 6 (2).png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Find Products",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Beveresed()));
              },
              child: Container(
                width: double.infinity,
                height: 700,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: surato.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: 175,
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: colors[index],
                            ),
                            color: colors[index]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(surato[index]),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              text[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
