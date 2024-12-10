import 'package:exam_app/new_page.dart';
import 'package:exam_app/productdeteil.dart';
import 'package:exam_app/static.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // static List image = [
  //   ,
  //   "images/pngfuel 1 (1).png",
  //   "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png",
  //   "images/pngfuel 1 (1).png",
  //   "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png",
  //   "images/pngfuel 1 (1).png",
  // ];
  // static List nomho = [
  //   'apple',
  //   'banana',
  //   'orange',
  //   'grape',
  //   'watermelon',
  //   'mango',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dhaka, Banassre",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Exclusive Offer",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 248,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return NewPage(
                        name: vaaaa[index]['Name'],
                        surat: vaaaa[index]['images'],
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: vaaaa.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 19);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Groceries",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 105,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => newMetod2(va1[index]),
                    itemCount: va1.length,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Best Selling",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 248,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return NewPage(
                        name: vaaaa[index]['Name'],
                        surat: vaaaa[index]['images'],
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: vaaaa.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 19);
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container newMetod2(Map<String, dynamic> data) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 248,
      height: 105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: data["color"]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(data["image"]),
          SizedBox(
            width: 20,
          ),
          Text(
            data["Name"],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
