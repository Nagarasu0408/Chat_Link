import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  final String Button_Name;
  final void Function()?onTap;
  const Custom_Button({super.key, required this.Button_Name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(color:Colors.grey.shade100,borderRadius:BorderRadius.circular(10),border:Border.all(color: Colors.blueGrey.shade100),),
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: EdgeInsets.all(15.0),
        child: Text(Button_Name,style: TextStyle(fontSize: 20,fontFamily: 'Classic'),),
      ),
    );
  }
}
