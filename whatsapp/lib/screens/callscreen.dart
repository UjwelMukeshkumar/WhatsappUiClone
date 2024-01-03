import 'package:flutter/material.dart';
import 'package:whatsapp/Components/chattile.dart';
import 'package:whatsapp/widgets/calltile.dart';

class ChatScreen1 extends StatefulWidget {
  const ChatScreen1({super.key});

  @override
  State<ChatScreen1> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Calltile(
              chat: chats[index],
              type: index % 2 == 0 ? "made" : "recieved",
            );
          }),
    );
  }
}
