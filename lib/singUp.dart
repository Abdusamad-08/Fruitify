import 'package:exam_app/bottomnavigationbar.dart';
import 'package:exam_app/homecsreen.dart';
import 'package:flutter/material.dart';

class Sing_Up extends StatefulWidget {
  const Sing_Up({super.key});

  @override
  State<Sing_Up> createState() => _Sing_UpState();
}

class _Sing_UpState extends State<Sing_Up> {
  TextEditingController _pasword = TextEditingController();
  bool sas = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 170),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Sign up now",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Please fill the details and create account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    fillColor: const Color.fromARGB(255, 228, 228, 228),
                    filled: true,
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    fillColor: const Color.fromARGB(255, 228, 228, 228),
                    filled: true,
                    hintText: "E-mail",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _pasword,
                  obscureText: sas,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    errorText: _pasword.text.length < 8
                        ? "Password boyad az 8 raqam ziyod boshad"
                        : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          sas = !sas;
                        });
                      },
                      icon: Icon(
                          sas ? Icons.remove_red_eye : Icons.visibility_off),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    fillColor: const Color.fromARGB(255, 225, 225, 225),
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 200),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forget Password"),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Color.fromRGBO(83, 177, 117, 1),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 120)),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bottom_navigator_bar()));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Bottom_navigator_bar()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                      ]),
                ),
                Text(
                  "Or connect",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.telegram,
                        color: Colors.blue,
                        size: 40,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.snapchat,
                        color: Colors.blue,
                        size: 40,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
