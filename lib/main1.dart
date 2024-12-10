import 'package:exam_app/login1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Glavni extends StatefulWidget {
  const Glavni({super.key});

  @override
  State<Glavni> createState() => _GlavniState();
}

class _GlavniState extends State<Glavni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/8140 1.png"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 380),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: SvgPicture.asset("images/Group.svg"),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "  Welcome \nto our store",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
              ),
              Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color.fromRGBO(83, 177, 117, 1),
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 120)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login1()));
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
