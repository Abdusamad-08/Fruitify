import 'package:exam_app/login1.dart';
import 'package:flutter/material.dart';

class Acoount extends StatefulWidget {
  const Acoount({super.key});

  @override
  State<Acoount> createState() => _AcoountState();
}

class _AcoountState extends State<Acoount> {
  List icons = [
    Icon(Icons.shopping_bag),
    Icon(Icons.card_membership_rounded),
    Icon(Icons.location_on_outlined),
    Icon(Icons.payment),
    Icon(Icons.panorama_horizontal_select_sharp),
    Icon(Icons.notifications_active),
    Icon(Icons.help),
    Icon(Icons.accessibility_outlined),
  ];
  List text = [
    "Orders",
    "My Details",
    "Delivery Address",
    "Payment Methods",
    "Promo Cord",
    "Notifecations ",
    "Help",
    "About ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset("images/Rectangle 82.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Davlatov Abdusaamd",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Icon(
                                Icons.app_registration_outlined,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "samaddavlatov@gmail.com",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 530,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: ListTile(
                          leading: icons[index],
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                text[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Icon(Icons.arrow_circle_right_outlined)
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: const Color.fromARGB(255, 212, 212, 212),
                      padding:
                          EdgeInsets.symmetric(horizontal: 120, vertical: 20)),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login1()));
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
