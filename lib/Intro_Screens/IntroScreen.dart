import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Screens/HomePage.dart';
import 'Intro_Screen1.dart';
import 'Intro_Screen2.dart';
import 'Intro_Screen3.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();
  bool DoneButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Link"),),
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              DoneButton = (index == 2);
            });
          },
          children: [
            Intro_Screen1(),
            Intro_Screen2(),
            Intro_Screen3(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DoneButton
                    ? GestureDetector(
                        onTap: () {
                          _controller.previousPage(
                              duration: Duration(milliseconds: 100),
                              curve: Curves.bounceIn);
                        },
                        child: const Text(
                          "Prev",
                          style: TextStyle(
                              fontFamily: "Classic",
                              fontSize: 17,
                              color: Color(0xff1d1160)),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              fontFamily: "Classic",
                              fontSize: 17,
                              color: Color(0xff1d1160)),
                        ),
                      ),
                SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                  effect: WormEffect(),
                ),
                DoneButton
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: const Text(
                          "Done",
                          style: TextStyle(
                              fontFamily: "Classic",
                              fontSize: 17,
                              color: Color(0xff1d1160)),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceIn);
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                              fontFamily: "Classic",
                              fontSize: 17,
                              color: Color(0xff1d1160)),
                        ),
                      )
              ],
            ))
      ]),
    );
  }
}
