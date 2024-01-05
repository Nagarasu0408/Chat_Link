import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Container(
            //       height: 60,
            //       width: 60,
            //       decoration: BoxDecoration(
            //         border: Border.all(color: Colors.white),
            //         borderRadius: BorderRadius.circular(60),
            //         image: DecorationImage(
            //           image: NetworkImage(
            //             'https://images.unsplash.com/photo-1623091411395-09e79fdbfcf3?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D',
            //           ),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 20,),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text("Name",style: TextStyle(fontFamily: 'Classic',fontSize: 20),),
            //         Text('Last Seen 2:30 A.M',style: TextStyle(fontFamily: 'Classic',fontSize: 12,color: Colors.black54),),
            //       ],
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 110,
              child: AppBar(
                backgroundColor: Color(0xFF007FFF),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(70),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://w.wallhaven.cc/full/j5/wallhaven-j596qq.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontFamily: 'Classic', fontSize: 20),
                        ),
                        Text(
                          'Last Seen 2:30 A.M',
                          style: TextStyle(
                              fontFamily: 'Classic',
                              fontSize: 12,
                              color: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 650,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-vector/social-networks-dating-apps-vector-seamless-pattern_341076-469.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'No Message Found',
                style: TextStyle(
                    fontFamily: 'Classic', fontSize: 30, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black54),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 200,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type your Thoughts...',
                            hintStyle:
                                TextStyle(fontSize: 15, fontFamily: 'Classic'),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.emoji_emotions_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.image),
                      ),
                    ],
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.mic),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
