import 'package:flutter/material.dart';

class Intro_Screen2 extends StatefulWidget {
  const Intro_Screen2({super.key});

  @override
  State<Intro_Screen2> createState() => _Intro_Screen2State();
}

class _Intro_Screen2State extends State<Intro_Screen2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("asset/Images/intro2.webp"),),
            // Image.network("https://static.vecteezy.com/system/resources/previews/015/658/207/original/online-chatting-person-character-illustration-png.png"),
             Text(
              "Improve the Chatting Experience",
              style: TextStyle(
                  fontSize: 25, fontFamily: "Classic", color: Color(0xff720e9e)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
