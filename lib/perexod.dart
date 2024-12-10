import 'package:exam_app/main1.dart';
import 'package:flutter/material.dart';

class Perexod extends StatefulWidget {
  const Perexod({super.key});

  @override
  State<Perexod> createState() => _PerexodState();
}

class _PerexodState extends State<Perexod> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Glavni()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(83, 177, 117, 1),
      body: Center(
        child: Container(
          child: Image.asset("images/Group 1 (4).png"),
        ),
      ),
    );
  }
}
