import 'package:flutter/material.dart';

class Intro_Screen3 extends StatefulWidget {
  const Intro_Screen3({super.key});

  @override
  State<Intro_Screen3> createState() => _Intro_Screen3State();
}

class _Intro_Screen3State extends State<Intro_Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              "https://static.vecteezy.com/system/resources/previews/011/343/652/original/teenager-create-content-marketing-3d-character-illustration-png.png"),
          const Text(
            "Exchange Your Thoughts",
            style: TextStyle(
                fontSize: 25, fontFamily: "Classic", color: Color(0xff452c63)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
