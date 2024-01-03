import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'Intro_Screens/IntroScreen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Link(),
  ));
}

class Link extends StatefulWidget {
  const Link({super.key});

  @override
  State<Link> createState() => _LinkState();
}

class _LinkState extends State<Link> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSplashScreen(splash: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://t4.ftcdn.net/jpg/01/00/76/57/360_F_100765796_hVO2AGkofuyqsiiPGd4rdEkjq1FaC11k.jpg",fit: BoxFit.fill,),
         const Text("LINK",style: TextStyle(fontSize: 35,fontFamily: 'Classic',),),
          // Container(
          //   alignment: Alignment(0,0.75),
          //   child: Column(
          //     children: [
          //       Text("Powered By"),Text("BJP")
          //     ],
          //   ),
          // )
        ],
      ),
        duration: 3000,
        // backgroundColor: Colors.amber,
        splashTransition: SplashTransition.scaleTransition,
        nextScreen:const IntroScreen(),
      ),
    );
  }
}
