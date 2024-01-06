import 'package:flutter/material.dart';
import 'package:link/Components/Button.dart';
import 'package:link/auth/auth_service.dart';

import '../Components/SquareTile.dart';
import '../Components/TestFiled.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

   RegisterPage({super.key, this.onTap});

  final TextEditingController EmailController=TextEditingController();

  final TextEditingController PasswordController=TextEditingController();

  final TextEditingController ConfirmPasswordController=TextEditingController();

  void Register(BuildContext context) async{
    final auth=AuthService();
    if(PasswordController.text==ConfirmPasswordController.text){
      try {
        auth.signUpWithEmailPassword(
            EmailController.text, PasswordController.text);
      }
      catch(e){
        showDialog(context: context, builder: (context)=>AlertDialog(
          title: Text(e.toString()),
        ));
      }
    }
    else{
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text("Password don't match!"),
      )
      );
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
            const SizedBox(height: 55,),
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
            Text('Register',style: TextStyle(fontSize: 30,fontFamily: 'Classic',color: Colors.grey.shade800),),
            const SizedBox(height: 35,),
            My_TextFiled(hintText: 'Email', obscureText: false, controller: EmailController,),
            const  SizedBox(height: 20,),
            My_TextFiled(hintText:'Password', obscureText: true, controller: PasswordController,),
            const SizedBox(height: 20,),
            My_TextFiled(hintText:'Confirm Password', obscureText: true, controller: ConfirmPasswordController,),
            const SizedBox(height: 20,),
            Custom_Button(Button_Name: 'Register',onTap: ()=>Register(context)),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               const Text("Already have an account?",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black26)),
                SizedBox(width: 10,),
                GestureDetector(
                    onTap: onTap,
                    child:const Text("Login Now",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black87)))
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
