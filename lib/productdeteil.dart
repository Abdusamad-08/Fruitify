import 'package:flutter/material.dart';

class Product_detail extends StatefulWidget {
  final String name;
  final String surat;
  const Product_detail({super.key, required this.name, required this.surat});

  @override
  State<Product_detail> createState() => _Product_detailState();
}

class _Product_detailState extends State<Product_detail> {
  bool sd = true;
  bool ss = true;
  bool ss1 = true;
  bool ss2 = true;
  int sam = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 224, 224, 224),
          actions: [
            Container(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.save_alt)),
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: const Color.fromARGB(255, 224, 224, 224)),
                child: Image.asset(
                  widget.surat,
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            sd = !sd;
                          });
                        },
                        icon: Icon(
                          sd == true ? Icons.favorite_border : Icons.favorite,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                if (sam > 0) {
                                  sam--;
                                }
                                ;
                              });
                            },
                            child: Text(
                              "-",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Text(
                            "$sam",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                sam++;
                              });
                            },
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "\$${sam * 499}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.all(
                  15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Detail",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            ss = !ss;
                          });
                        },
                        icon: Icon(ss == true
                            ? Icons.arrow_circle_right_outlined
                            : Icons.arrow_drop_down_circle_outlined))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.all(
                  15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nutritions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset("images/Group 115s.png"),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                ss1 = !ss1;
                              });
                            },
                            icon: Icon(ss1 == true
                                ? Icons.arrow_circle_right_outlined
                                : Icons.arrow_drop_down_circle_outlined)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.all(
                  15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Review",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset("images/Group 6834.png"),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                ss2 = !ss2;
                              });
                            },
                            icon: Icon(ss2 == true
                                ? Icons.arrow_circle_right_outlined
                                : Icons.arrow_drop_down_circle_outlined)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(
                            horizontal: 120, vertical: 20)),
                    onPressed: () {},
                    child: Text(
                      "Add To Basket",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
