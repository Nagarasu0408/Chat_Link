import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String asset;
  final void Function()? onTap;
  const SquareTile({super.key, required this.asset, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueGrey.shade100),),
          child: Image.asset(
            asset,
            height: 60,
          ),
      ),
    );
  }
}
