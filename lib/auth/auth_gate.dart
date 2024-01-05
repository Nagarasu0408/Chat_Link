import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:link/Demo/UserScreen.dart';
import 'package:link/Screens/HomePage.dart';
import 'package:link/auth/loginOrRegister.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            // return  HomeScreen();
            return UserScreen();
          }
          else{
            return  LoginOrRegister();
          }
        },
      ) ,
    );
  }
}
