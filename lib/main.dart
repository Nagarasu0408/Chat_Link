import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:link/firebase_options.dart';

import 'Intro_Screens/IntroScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MaterialApp(
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 650,
              child: AnimatedSplashScreen(
                centered: true,
                splash: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "asset/Images/ChatImage.png",
                      fit: BoxFit.fill,
                      height: 130,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Chat",
                      style: TextStyle(
                        fontSize: 45,
                        fontFamily: 'Classic',
                      ),
                    ),
                  ],
                ),
                duration: 1500,
                curve:Curves.easeInOutSine,
                splashTransition: SplashTransition.scaleTransition,
                nextScreen: const IntroScreen(),
              ),
            ),
            const Column(
              children: [
                Text(
                  "Powered By",
                  style: TextStyle(
                      fontFamily: 'Classic',
                      fontWeight: FontWeight.w200,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Play Kid",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Classic'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
