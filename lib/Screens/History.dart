import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("asset/Images/ChatImage.png",height:50,width: 60,),
                    Text("Chat", style: TextStyle(fontSize: 40, fontFamily: 'Classic'),),
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
                        hintText: 'Search User...',
                        hintStyle: TextStyle(fontSize: 18,color: Colors.black26,fontFamily: 'Classic'),
                        suffixIcon: Icon(Icons.search,size: 35)
                    ),
                  ),
                ),
              ),
              for(int i=0;i<20;i++)
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.network(
                            "https://static.vecteezy.com/system/resources/thumbnails/029/938/693/small_2x/3d-cartoon-cute-boy-photo.jpg",
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ID-717821F235ERITA",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),),
                              SizedBox(height: 10,),
                              Text("Last Chat Date...",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black54)),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
