import 'package:flutter/material.dart';
import 'package:link/Components/Button.dart';
import 'package:link/Components/SquareTile.dart';
import 'package:link/auth/auth_service.dart';

import '../Components/TestFiled.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, this.onTap});

  void Login(BuildContext context) async {
    final authService = AuthService();
    try {
      await authService.signInWithEmailPassword(
          EmailController.text, PasswordController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/Images/ChatImage.png",
                  height: 70,
                ),
                const SizedBox(width: 10,),
            const    Text('Chat',style: TextStyle(fontFamily: 'Classic',fontSize: 50),)
              ],
            ),
            const SizedBox(height: 25,),
            Text('Login',style: TextStyle(fontSize: 30,fontFamily: 'Classic',color: Colors.grey.shade800),),
            const SizedBox(height: 25,),
            My_TextFiled(
              hintText: 'Email',
              obscureText: false,
              controller: EmailController,
            ),
            const SizedBox(
              height: 20,
            ),
            My_TextFiled(
              hintText: 'Password',
              obscureText: true,
              controller: PasswordController,
            ),
            const SizedBox(
              height: 20,
            ),
            Custom_Button(Button_Name: 'Login',
                onTap: () => Login(context),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Not a Member?",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black26),),
                const SizedBox(width: 10,),
                GestureDetector(onTap: onTap, child:const Text("Register Now",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black87),))
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 1,width: 150,decoration: BoxDecoration(color: Colors.grey.shade300,border: Border.all(color: Colors.blueGrey.shade200)),),
                const Text("Or",style: TextStyle(fontFamily: 'Classic',fontSize: 20,color: Colors.blueGrey),),
                Container(height: 1,width: 150,decoration: BoxDecoration(color: Colors.grey.shade300,border: Border.all(color: Colors.blueGrey.shade200)),),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(asset: "asset/Images/google.png",onTap: ()=>AuthService().signInWithGoogle()),
                SizedBox(width: 20,),
                SquareTile(asset: "asset/Images/phone.png",onTap: (){
                  print("Phone");
                },),
              ],
            ),
        
        
          ],
        ),
      ),
    );
  }
}
