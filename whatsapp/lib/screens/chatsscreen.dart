import 'package:flutter/material.dart';
import 'package:whatsapp/Components/chattile.dart';
import 'package:whatsapp/widgets/chattile.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Chattile(chat: chats[index]);
          }),
    );
  }
}
