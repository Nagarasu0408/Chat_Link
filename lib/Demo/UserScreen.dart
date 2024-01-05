import 'package:flutter/material.dart';
import 'package:link/Demo/ChatPage.dart';
import 'package:link/Services/Chat/Chat_Services.dart';
import 'package:link/auth/auth_service.dart';

import 'UserTile.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

void logout(){
  final auth=AuthService();
  auth.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey,
        title: Text("Chat"),
        actions: [IconButton(icon: Icon(Icons.logout),onPressed: logout,)],
      ),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUserStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Error");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading...");
        }
        return ListView(
          children: snapshot.data!
              .map<Widget>((userData) => _buildUserListItem(userData, context))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
   if(userData['email']!=_authService.getCurrentUser()!.email){
     return UserTile(
       text: userData['email'],
       ontap: () {
         Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (context) =>
                     ChatPage(receiverEmail: userData['email'], receiverID: userData['uid'],)));
       },
     );
   }
else{
return Container();
   }

  }
}
