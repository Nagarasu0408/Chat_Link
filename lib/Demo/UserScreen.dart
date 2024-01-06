import 'package:flutter/material.dart';
import 'package:link/Components/Logo.dart';
import 'package:link/Components/SearchBar.dart';
import 'package:link/Demo/ChatPage.dart';
import 'package:link/Services/Chat/Chat_Services.dart';
import 'package:link/auth/auth_service.dart';
import 'UserTile.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();
  final TextEditingController _SearchController = TextEditingController();

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Logo(),
            Custom_SearchBar(
                hintText: 'Search for message...',
                controller: _SearchController),
            Container(child: _buildUserList()),
          ],
        ),
      ),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUserStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text(
              "Error...",
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Classic', color: Colors.black26),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: Text(
              "Loading...",
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Classic', color: Colors.black26),
            ),
          );
        }
        return ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: snapshot.data!
              .map<Widget>((userData) => _buildUserListItem(userData, context))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    if (userData['email'] != _authService.getCurrentUser()!.email) {
      return UserTile(
        text: userData['email'],
        ontap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChatPage(
                        receiverEmail: userData['email'],
                        receiverID: userData['uid'],
                      )));
        },
      );
    } else {
      return Container();
    }
  }
}
