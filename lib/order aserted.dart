import 'package:flutter/material.dart';

class Order_ extends StatefulWidget {
  const Order_({super.key});

  @override
  State<Order_> createState() => _Order_State();
}

class _Order_State extends State<Order_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/Group 6872.png"),
            SizedBox(
              height: 80,
            ),
            Text(
              "Your Order has been \n          accepted",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Your items has been placcd and is on \n        it’s way to being processed",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 120, vertical: 20)),
                  onPressed: () {},
                  child: Text(
                    "Track Order",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
