import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  SendMessage({super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blueGrey.shade100)),
      child: TextField(
        controller: controller,
        style: const TextStyle(fontFamily: 'Classic', fontSize: 15),
        textAlign: TextAlign.left,
        cursorColor: Colors.blue.shade300,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          enabled: true,
          disabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Colors.black26,
            fontFamily: 'Classic',
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.emoji_emotions_outlined),
            onPressed: () {
              print("Emoji");
            },
          ),
        ),
      ),
    );
  }
}
