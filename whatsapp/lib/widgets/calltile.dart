import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp/Components/chattile.dart';

class Calltile extends StatelessWidget {
  const Calltile({required this.chat, required this.type});
  final String type;
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(image: AssetImage(chat.avatar))),
          ),
          title: Text(chat.name),
          subtitle: Row(
            children: [
              Icon(
                type == "made" ? Icons.call_made : Icons.call_received,
                size: 15,
                color: Random().nextInt(10) > 5 ? Colors.red : Colors.green,
              ),
              Text(chat.time),
            ],
          ),
          trailing: Icon(
            Icons.call,
            color: Colors.lightGreen,
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
          indent: 80,
          endIndent: 20,
        )
      ],
    );
  }
}
