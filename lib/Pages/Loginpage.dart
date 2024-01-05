import 'package:flutter/material.dart';
import 'package:link/Components/Button.dart';

import '../Components/TestFiled.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController EmailController=TextEditingController();
  final TextEditingController PasswordController=TextEditingController();

  final void Function()? onTap;

   LoginPage({super.key, this.onTap});



  void Login(){
    print('Login');
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/Images/ChatImage.png",height: 70,),
              Text('Chat')
            ],
          ),
          SizedBox(height: 70,),
          My_TextFiled(hintText: 'Email', obscureText: false, controller: EmailController,),
          SizedBox(height: 20,),
          My_TextFiled(hintText:'Password', obscureText: true, controller: PasswordController,),
          SizedBox(height: 20,),
          Custom_Button(Button_Name: 'Login',onTap: Login),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Not a Member?"),
              GestureDetector(
                onTap: onTap,
                  child: Text("Register Now"))
            ],
          ),
        ],
      ),
    );
  }
}
