import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 65.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "asset/Images/ChatImage.png",
            height: 70,
          ),
          const Text(
            "Chat",
            style: TextStyle(fontSize: 50, fontFamily: 'Classic'),
          ),
        ],
      ),
    );

  }
}
