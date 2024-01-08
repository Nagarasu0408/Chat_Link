import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:link/Components/Chat_Bubble.dart';
import 'package:link/Services/Chat/Chat_Services.dart';
import 'package:link/auth/auth_service.dart';

import '../Components/SendMessageBar.dart';

class ChatPage extends StatelessWidget {
  final String receiverEmail;
  final String receiverID;

  ChatPage({super.key, required this.receiverEmail, required this.receiverID});

  final TextEditingController MessageController = TextEditingController();
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

//send Message

  void sendMessage() async {
    if (MessageController.text.isNotEmpty) {
      await _chatService.sendMessage(receiverID, MessageController.text);
      MessageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(height: 50),
        SizedBox(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.keyboard_backspace,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://5.imimg.com/data5/SELLER/Default/2022/1/BR/FV/JJ/135718437/new-product.jpeg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        receiverEmail,
                        style: const TextStyle(
                            fontSize: 18, fontFamily: 'Classic'),
                      ),
                      const Text(
                        "Last Seen 12:30 PM",
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Classic',
                            color: Colors.black38),
                      ),
                    ],
                  ),

                ],
              ),
              IconButton(icon: Icon(Icons.more_vert,size: 25,),onPressed:(){
                print("More Info");
              },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 1,
          width: 700,
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade50,
            border: Border.all(color: Colors.black12),
          ),
        ),
        // Container(
        //   height: MediaQuery.of(context).size.height - 202,
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //       image: NetworkImage(
        //           'https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/m/b/g/small-anushka-sen-poster-100-anushka-sen-poster-multicolor-photo-original-imagg9qnfymxw34t.jpeg?q=90'),
        //       opacity: .3,
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   child: Expanded(
        //     child: _buildMessageList(),
        //   ),
        // ),
        Expanded(
          child: _buildMessageList(),
        ),
        _buildUserInput(),
      ]),
    );
  }

  Widget _buildMessageList() {
    String senderID = _authService.getCurrentUser()!.uid;
    return StreamBuilder(
      stream: _chatService.getMessages(receiverID, senderID),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text(
              "Error",
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
          children:
              snapshot.data!.docs.map((doc) => _buildMessageItem(doc)).toList(),
        );
      },
    );
  }

  Widget _buildMessageItem(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    //is Current User
    bool isCurrentUser = data['senderID'] == _authService.getCurrentUser()!.uid;

    //Align message to the  right if sender is the current user, otherwise left
    var alignment =
        isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;

    return Container(
        alignment: alignment,
        child: Column(
          crossAxisAlignment:
              isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            ChatBubble(
              message: data['message'],
              isCurrentUser: isCurrentUser,
            )
          ],
        ));
  }

  Widget _buildUserInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SendMessage(
                hintText: 'Type Something with sense',
                controller: MessageController),
          ),
          GestureDetector(
            onTap: sendMessage,
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment(.3, 0),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.only(right: 15),
              child: Image.asset(
                'asset/Images/send.png',
                height: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
