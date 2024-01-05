import 'package:flutter/material.dart';
import 'package:link/Screens/MessageScreen.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           const SizedBox(
              height: 30,
            ),
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
                    style: TextStyle(fontSize: 40, fontFamily: 'Classic'),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    enabled: true,
                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search for message...',
                    hintStyle: TextStyle(fontSize: 18,color: Colors.black26,fontFamily: 'Classic'),
                    suffixIcon: Icon(Icons.search,size: 35)
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height-350,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child:
                      InkWell(
                        onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen()));
                        },
                        child: Row(
                          children: [
                            // CircleAvatar(
                            //   radius: 10.0,
                            //   backgroundColor: false ? Colors.green : Colors.red,
                            // ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                "https://w.wallhaven.cc/full/j5/wallhaven-j596qq.jpg",
                                height: 55,
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                          const  Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ID-235RT5689ERIAT",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "Last Message...",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: InkWell(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH",
                                height: 55,
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const  Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ID-GH45W5623RIAT",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "Last Message...",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: InkWell(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                "https://image.lexica.art/full_jpg/19f280a2-2b97-4be2-b782-1fd5c70b84f4",
                                height: 55,
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const  Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ID-295RT5639ERIAT",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "Last Message...",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //
            //   alignment: Alignment.bottomCenter,
            //   child: OutlinedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     style: OutlinedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       side: const BorderSide(
            //         strokeAlign: 10,
            //         color: Colors.black26,
            //         style: BorderStyle.solid,
            //         width: 1.0,
            //       ),
            //     ),
            //     child: Text(
            //       'Go Trace',
            //       style: TextStyle(
            //           fontFamily: 'Classic',
            //           fontSize: 15,
            //           fontWeight: FontWeight.w400),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.lightBlue,
        child: Text("GO-T",style: TextStyle(fontFamily: 'Classic',fontSize: 15),),
      ),
    );
  }
}
