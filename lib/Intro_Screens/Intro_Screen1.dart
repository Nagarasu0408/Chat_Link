import 'package:flutter/material.dart';

class Intro_Screen1 extends StatefulWidget {
  const Intro_Screen1({super.key});

  @override
  State<Intro_Screen1> createState() => _Intro_Screen1State();
}

class _Intro_Screen1State extends State<Intro_Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Color(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Text("Welcome to Link",style: TextStyle(fontSize: 35,fontFamily: "Classic",color: Color(0xff720e9e)),textAlign: TextAlign.center,),
            Image.network("https://static.vecteezy.com/system/resources/previews/011/356/168/original/young-boy-and-girl-doing-online-chatting-3d-character-illustration-png.png"),
            const Text("create a magnetic force to attract",style: TextStyle(fontSize: 25,fontFamily: "Classic",color: Color(0xff720e9e)),textAlign: TextAlign.center,)

          ],
        ),
      ),
    );
  }
}
