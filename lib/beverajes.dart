import 'package:flutter/material.dart';

class Beveresed extends StatefulWidget {
  const Beveresed({super.key});

  @override
  State<Beveresed> createState() => _BeveresedState();
}

class _BeveresedState extends State<Beveresed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Beveragies",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.manage_accounts),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Container(
          child: GridView.builder(
            itemCount: 4,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                width: 173,
                height: 248,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset("images/pngfuel 11.png"),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            "Diet Coke",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "355ml, Price",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("\$499"), Icon(Icons.add)],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
