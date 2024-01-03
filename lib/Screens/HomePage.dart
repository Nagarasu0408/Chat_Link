import 'package:flutter/material.dart';
import 'package:link/Screens/Home.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6E6FA),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Click");
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  // 'https://images.unsplash.com/photo-1623091411395-09e79fdbfcf3?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D'
                              // "https://cdn4.sharechat.com/compressed_gm_40_img_204040_2e24b91f_1694788200484_sc.jpg?tenant=sc&referrer=pwa-sharechat-service&f=484_sc.jpg"
                              "https://i.pinimg.com/736x/9f/76/72/9f7672d8f4dc50db37cc030af7afa8c2.jpg"
                              ),
                              opacity: 1,
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Colors.lightGreenAccent, width: 3),
                        ),
                      ),
                    ),

                    Text(
                      "Trace",
                      style: TextStyle(
                          fontFamily: 'Classic',
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: PopupMenuButton(
                          itemBuilder: (context) => [
                                PopupMenuItem(child: Text("Hello")),
                                PopupMenuItem(child: Text("Hello")),
                                PopupMenuItem(child: Text("Hello")),
                                PopupMenuItem(child: Text("Hello")),
                              ]),
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(
                    //     Icons.more_vert,
                    //     color: Color(0xFF662d91),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: OutlinedButton(
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
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              child: const Text(
                "Chat Window",
                style: TextStyle(
                    fontFamily: 'Classic',
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
