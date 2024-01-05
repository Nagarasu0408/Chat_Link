import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:link/Screens/Home.dart';
import 'package:link/Screens/OTP_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String dropdownvalue = 'Language';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/Images/ChatImage.png",
                  height: 50,
                  width: 60,
                ),
                const Text(
                  "Chat",
                  style: TextStyle(fontSize: 50, fontFamily: 'Classic'),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://img.freepik.com/premium-vector/social-networks-dating-apps-vector-seamless-pattern_341076-469.jpg'),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.blue, BlendMode.color)),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.blueAccent,
                  //     blurRadius: 50.0,
                  //   ),
                  // ],
              ),
              height: 300,
              width: 300,
            ),
          ),
          Container(
            width: 350,
            alignment: Alignment.center,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                    fontFamily: 'Classic', fontSize: 25, color: Colors.black87),
                children: [
                  TextSpan(
                    text: "Read our ",
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                  TextSpan(
                    text: ". Tap Agree & Continue to Accept the ",
                  ),
                  TextSpan(
                    text: "Terms of Service",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              side: const BorderSide(
                strokeAlign: 10,
                color: Colors.black26,
                style: BorderStyle.solid,
                width: 1.0,
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: const Text(
              "Agree & continue",
              style: TextStyle(
                  fontFamily: 'Classic',
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Center(
            child: PopupMenuButton<String>(
              iconSize: 35,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dropdownvalue,
                    style: TextStyle(fontFamily: 'Classic', fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.language,
                    size: 35,
                  ),
                ],
              ),
              onSelected: (String value) {
                setState(() {
                  dropdownvalue = value;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'English',
                  child: Text('English'),
                ),
                PopupMenuItem<String>(
                  value: 'Malayalam',
                  child: Text('Malayalam'),
                ),
                PopupMenuItem<String>(
                  value: 'Hindi',
                  child: Text('Hindi'),
                ),
                PopupMenuItem<String>(
                  value: 'Tamil',
                  child: Text('Tamil'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img.freepik.com/premium-vector/boy-character-chat-smartphone_99413-32.jpg?w=2000"),fit: BoxFit.contain,
                      colorFilter: ColorFilter.mode(
                        Colors.white, BlendMode.darken,),opacity: 1)
              ),
            ),
            const Text(
              "Login",
              style: TextStyle(
                  fontFamily: 'Classic', fontSize: 30,),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: InternationalPhoneNumberInput(
                  textStyle: TextStyle(color: Colors.black),
                  selectorTextStyle: TextStyle(color: Colors.black),
                  cursorColor: Colors.white,
                  onInputChanged: (PhoneNumber number) {
                    // handle phone number changes
                    print(number.phoneNumber);
                  },
                  inputDecoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Classic',
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                side: const BorderSide(
                  strokeAlign: 15,
                  color: Colors.black26,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));
              },
              child: Text(
                "Next",
                style: TextStyle(fontFamily:'Classic',fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
