import 'package:flutter/material.dart';
import 'package:whatsapp/Components/chattile.dart';

class Statustile extends StatelessWidget {
  const Statustile({required this.chat});
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
              image: DecorationImage(
                image: AssetImage(chat.avatar),
              ),
            ),
          ),
          title: Text(chat.name),
          subtitle: Text("Yesterday" + chat.time),
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
