import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                SizedBox(
                  height: 400,
                  width: 400,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1557053910-d9eadeed1c58?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTB8OTQ1MjQ5NHx8ZW58MHx8fHx8",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, right: 15),
                  child: IconButton(
                    isSelected: true,
                    onPressed: () {
                      print('Edit Button Click');
                    },
                    icon: Icon(
                      Icons.edit_outlined,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 320),
                  child: Container(
                    decoration: BoxDecoration(border:Border.all(color: Colors.white),color: Colors.white.withOpacity(0.5),),
                    alignment: Alignment.center,
                    child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("2024",style: TextStyle(fontFamily: 'Classic',fontSize: 25),),
                            Text('Following',style: TextStyle(fontFamily: 'Classic',fontSize: 20,color: Colors.black87),),
                          ],
                        ),
                        Container(
                          height: 65,
                          decoration: BoxDecoration(border:Border.all(color: Colors.black54) ),),
                        Column(
                          children: [
                            Text("2020",style: TextStyle(fontFamily: 'Classic',fontSize: 25),),
                            Text('Followers',style: TextStyle(fontFamily: 'Classic',fontSize: 20,color: Colors.black87),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: (){
                      print('Taped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.chat_bubble_outline,size: 30,),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Chat",style: TextStyle(fontSize: 20,fontFamily: 'Classic'),),
                              Text("Modify Chat Settings",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black54),),
                            ],
                          ),
                          SizedBox(width: 70,),
                          Icon(Icons.arrow_forward_ios,size: 15,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      print('Taped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.privacy_tip_outlined,size: 30,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Privacy Policy",style: TextStyle(fontSize: 20,fontFamily: 'Classic'),),
                              Text("Details About our Service",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black54),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,size: 15,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      print('Taped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_3_outlined,size: 30,),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Profile",style: TextStyle(fontSize: 20,fontFamily: 'Classic'),),
                              Text("Update Your Profile",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black54),),
                            ],
                          ),
                          SizedBox(width: 70,),
                          Icon(Icons.arrow_forward_ios,size: 15,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      print('Taped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.control_camera,size: 30,),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Settings",style: TextStyle(fontSize: 20,fontFamily: 'Classic'),),
                            Text("Password and Security",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black54),),
                          ],
                        ),
                        SizedBox(width: 55,),
                        Icon(Icons.arrow_forward_ios,size: 15,),
                      ],
                    ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      print('Taped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout,size: 30,),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Log out",style: TextStyle(fontSize: 20,fontFamily: 'Classic'),),
                              Text("See you Later",style: TextStyle(fontSize: 15,fontFamily: 'Classic',color: Colors.black54),),
                            ],
                          ),
                          SizedBox(width: 130,),
                          Icon(Icons.arrow_forward_ios,size: 15,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(child: Text('Version 1.0.0.5',style: TextStyle(fontSize: 16,fontFamily: 'Classic',color: Colors.black26),),),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
