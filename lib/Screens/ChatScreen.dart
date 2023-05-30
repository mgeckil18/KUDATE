import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Controllers/ChatController.dart';
import 'IndividualChatScreen.dart';

class ChatScreen extends StatelessWidget {
  // This would typically come from your database
  ChatController chatController = Get.find();
  final List<String> chats = ['Chat 1', 'Chat 2', 'Chat 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(chats[index]),
            onTap: () {
              // navigate to individual chat screen when a chat is tapped
              Get.to(IndividualChatScreen(chatName: chats[index]));
            },
          );
        },
      ),
    );
  }
}
