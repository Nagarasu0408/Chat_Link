import 'dart:async';

import 'package:flutter/material.dart';
import 'package:link/Screens/Home.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController textEditingController = TextEditingController();
  int resendCodeTimer = 15;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startResendCodeTimer();
  }

  void startResendCodeTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (resendCodeTimer > 0) {
          resendCodeTimer--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  void resendCode() {
    // Simulate sending a new OTP
    print("Resending OTP...");
    setState(() {
      resendCodeTimer = 15;
    });
    startResendCodeTimer();
    // In a real-world scenario, you would send a new OTP to the user
    // and handle the timer based on the actual SMS sending and receiving process.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: Row(
              children: [
                Image.asset("asset/Images/ChatImage.png",height: 100,width: 100,),
                SizedBox(width: 10,),
                Text("Chat",style: TextStyle(fontFamily: 'Classic',fontSize:45 ),),
              ],
            )),
            SizedBox(height: 30,),
            Text("Verification",style: TextStyle(fontFamily: 'Classic',fontSize: 30,),),
            SizedBox(height: 35,),
            Text(
              'We have sent you an SMS with a code to the number that you provided.',
              style: TextStyle(fontSize: 14,fontFamily:'Classic',color: Colors.black26),
            ),
            SizedBox(height: 35,),
            PinCodeTextField(
              appContext: context,
              length: 6,
              controller: textEditingController,
              onChanged: (value) {
                // Handle OTP changes
              },
              onCompleted: (value) {
                // Handle OTP verification completed
                print("OTP: $value");
              },
            ),
            SizedBox(height: 35,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  print("Manual Verification: ${textEditingController.text}");
                },
                child: Text('Verify OTP',style: TextStyle(fontFamily: 'Classic',fontSize: 15,color: Colors.black),),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Resend in $resendCodeTimer seconds',  style: TextStyle(fontSize: 16,fontFamily:'Classic',color: Colors.black,),),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    if (resendCodeTimer == 0) {
                      resendCode();
                    }
                  },
                  child: Text(
                    'Resend now',
                    style: TextStyle(
                      color: resendCodeTimer == 0
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
