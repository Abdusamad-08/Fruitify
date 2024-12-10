import 'package:exam_app/order%20aserted.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Map<String, String> pro = {
    "Delivery": "Select Method",
    "Pament": "image",
    "Promo Code": "Pick discount",
    "Total Cost": "\$13.97",
  };
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("MY CART",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 550,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: ListTile(
                      leading: Image.asset(
                          "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 copy.png"),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Bell Pepper Red",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '1kg, Price',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                              Icon(Icons.clear_rounded)
                            ],
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if (cnt > 0) {
                                              cnt--;
                                            }
                                          });
                                        },
                                        child: Text(
                                          "-",
                                          style: TextStyle(fontSize: 20),
                                        )),
                                    Text(
                                      "${cnt}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          setState(() {
                                            cnt++;
                                          });
                                        },
                                        child: Text(
                                          "+",
                                          style: TextStyle(fontSize: 20),
                                        )),
                                  ],
                                ),
                                Container(
                                  child: Text("\$${cnt * 499}"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 15, right: 15, bottom: 30),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Chekcout",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.clear,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 300,
                              child: ListView.builder(
                                itemCount: pro.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: ListTile(
                                      leading: Text(
                                        "${pro.keys.elementAt(index)}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 18),
                                      ),
                                      title: Row(
                                        children: [
                                          Text("${pro.values.elementAt(index)}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("By placing an order you agree to our",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("Terms",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                        Text("And",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey)),
                                        Text("Condition",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      backgroundColor: Colors.green,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 120, vertical: 20)),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Order_()));
                                  },
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
                  },
                );
              },
              child: Text(
                "Go to checkout",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
