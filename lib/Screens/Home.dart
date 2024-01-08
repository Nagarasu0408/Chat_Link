import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:link/Demo/ChatPage.dart';
import 'package:link/Demo/UserScreen.dart';
import 'package:link/Screens/History.dart';
import 'package:link/Screens/chat.dart';
import 'package:link/Screens/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final Screens = [
    // Chat(),
    UserScreen(),
    History(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[index],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: GNav(
          // duration: Duration(milliseconds: 1000),
          // tabBorder: Border.all(color: Colors.purple.shade50.withOpacity(0.1)),
          gap: 8,
          color: Colors.grey[800],
          activeColor: Colors.black,
          iconSize: 25,
          tabBackgroundColor: Colors.blue.withOpacity(0.1),
          padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 17),
          tabs: [
            GButton(
              icon: Icons.spoke_outlined,
              text: "Chat",
              textStyle:const TextStyle(fontSize:18,fontFamily: 'Classic' ),
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            GButton(
              icon: Icons.history_toggle_off_outlined,
              text: "History",
              textStyle:const TextStyle(fontSize:18,fontFamily: 'Classic' ),
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
            ),
            GButton(
              icon: Icons.construction,
              text: "Settings",
              textStyle:const TextStyle(fontSize:18,fontFamily: 'Classic' ),
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
BottomNavigationBar(
currentIndex: index,
onTap: (Index){
setState(() {
index=Index;
});
},
items: [

BottomNavigationBarItem(
icon: Icon(Icons.spoke_outlined,size: 30), label: "Chat"),
BottomNavigationBarItem(icon: Icon(Icons.history_toggle_off_outlined,size: 30,), label: "History"),
BottomNavigationBarItem(icon: Icon(Icons.settings_suggest_rounded,size: 30), label: "Settings"),
],*/
