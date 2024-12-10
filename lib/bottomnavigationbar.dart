import 'package:exam_app/Explore.dart';
import 'package:exam_app/account.dart';
import 'package:exam_app/cart.dart';
import 'package:exam_app/favorite.dart';
import 'package:exam_app/homecsreen.dart';
import 'package:flutter/material.dart';

class Bottom_navigator_bar extends StatefulWidget {
  const Bottom_navigator_bar({super.key});

  @override
  State<Bottom_navigator_bar> createState() => _Bottom_navigator_barState();
}

class _Bottom_navigator_barState extends State<Bottom_navigator_bar> {
  List<Widget> pages = [
    HomeScreen(),
    Explore(),
    Cart(),
    Favorite(),
    Acoount(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.shifting,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: "Profile"),
          ]),
    );
  }
}
