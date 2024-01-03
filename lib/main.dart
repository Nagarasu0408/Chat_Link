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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 750,
            child: AnimatedSplashScreen(
              centered: true,
              splash: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network("https://t4.ftcdn.net/jpg/01/00/76/57/360_F_100765796_hVO2AGkofuyqsiiPGd4rdEkjq1FaC11k.jpg",fit: BoxFit.fill,),
               const Text("LINK",style: TextStyle(fontSize: 35,fontFamily: 'Classic',),),
              ],
            ),
              duration: 1500,
              splashTransition: SplashTransition.scaleTransition,
              nextScreen:const IntroScreen(),
            ),
          ),
          Container(
            child: const Column(
              children: [
                Text("Powered By",style: TextStyle(fontFamily: 'Classic',fontWeight:FontWeight.w200,fontSize: 17.5),),
                Text("Play Kid",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Classic'),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
