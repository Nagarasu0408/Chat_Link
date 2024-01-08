import 'package:flutter/material.dart';
import 'package:link/Components/Logo.dart';
import 'package:link/Components/SearchBar.dart';
import 'package:link/Demo/ChatPage.dart';
import 'package:link/Services/Chat/Chat_Services.dart';
import 'package:link/auth/auth_service.dart';
import 'UserTile.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _users = [];

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  void _loadUsers() {
    _chatService.getUserStream().listen((List<Map<String, dynamic>> users) {
      setState(() {
        _users = users;
      });
    });
  }

  List<Map<String, dynamic>> _filterUsers(String query) {
    return _users
        .where((user) =>
    user['email']
        .toString()
        .toLowerCase()
        .contains(query.toLowerCase()) &&
        user['email'] != _authService.getCurrentUser()!.email)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Logo(),
            Custom_SearchBar(
              hintText: 'Search for a user...',
              controller: _searchController,
              onChanged: (query) {
                setState(() {
                  // Update the user list based on the search query
                  _users = _filterUsers(query);
                });
              },
            ),
            _buildUserList(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserList() {
    if (_users.isEmpty) {
      return const Center(
        child: Text(
          "No users found",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Classic',
            color: Colors.black26,
          ),
        ),
      );
    }

    return ListView(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: _users
          .map<Widget>((userData) => _buildUserListItem(userData, context))
          .toList(),
    );
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    if(userData["email"]!=_authService.getCurrentUser()!.email) {
      return UserTile(
        text: userData['email'],
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ChatPage(
                    receiverEmail: userData['email'],
                    receiverID: userData['uid'],
                  ),
            ),
          );
        },
      );
    }
    else
      {
        return Container();
      }
  }
}
