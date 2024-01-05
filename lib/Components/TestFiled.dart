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
      padding:  EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hintText
        ),
      ),
    );
  }
}

