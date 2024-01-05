import 'package:flutter/material.dart';
import 'package:link/Components/Button.dart';
import 'package:link/auth/auth_service.dart';

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
          My_TextFiled(hintText:'Confirm Password', obscureText: true, controller: ConfirmPasswordController,),
          SizedBox(height: 20,),
          Custom_Button(Button_Name: 'Register',onTap: ()=>Register(context)),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Already have an account?"),
              GestureDetector(
                  onTap: onTap,
                  child: Text("Login Now"))
            ],
          ),
        ],
      ),
    );
  }
}
