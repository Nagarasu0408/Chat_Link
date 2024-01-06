import 'package:flutter/material.dart';
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
  int index=0;
  final Screens=[
    // Chat(),
    UserScreen(),
    History(),
    Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[index],
      bottomNavigationBar: BottomNavigationBar(
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
        ],
      ),
    );
  }
}
