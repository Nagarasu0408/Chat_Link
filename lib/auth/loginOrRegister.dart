import 'package:flutter/material.dart';
import 'package:link/Pages/Loginpage.dart';
import 'package:link/Pages/RegisterPage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool ShowLoginPage = true;

  void togglePgae() {
    setState(() {
      ShowLoginPage = !ShowLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ShowLoginPage) {
      return LoginPage(
        onTap: togglePgae,
      );
    } else {
      return RegisterPage(
        onTap: togglePgae,
      );
    }
  }
}
