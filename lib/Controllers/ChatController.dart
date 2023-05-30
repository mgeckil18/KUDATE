import 'package:get/get.dart';

class ChatController extends GetxController {
  var chats = <Chat>[].obs;

  void addChat(Chat chat) {
    chats.add(chat);
  }

  void addMessage(String chatId, ChatMessage message) {
    var chatIndex = chats.indexWhere((chat) => chat.id == chatId);
    if (chatIndex != -1) {
      chats[chatIndex].messages.add(message);
    }
  }

  List<ChatMessage> getMessages(String chatId) {
    var chat = chats.singleWhere((chat) => chat.id == chatId, orElse: () => Chat(id: chatId, messages: []));
    return chat.messages;
  }
}

class Chat {
  String id;
  List<ChatMessage> messages;

  Chat({required this.id, required this.messages});
}

class ChatMessage {
  String senderId;
  String text;
  DateTime timestamp;

  ChatMessage({required this.senderId, required this.text, required this.timestamp});
}
