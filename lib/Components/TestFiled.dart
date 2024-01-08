import 'package:flutter/material.dart';

class My_TextFiled extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const My_TextFiled({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 70,
        child: TextField(
          style:const TextStyle(fontFamily: 'Classic',fontSize: 20),
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade100),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder:const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
            hintText: hintText,
            hintStyle:const TextStyle(fontSize: 18,fontFamily: 'Classic',color: Colors.black26)
          ),
        ),
      ),
    );
  }
}

