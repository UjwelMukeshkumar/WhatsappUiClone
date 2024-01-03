import 'package:flutter/material.dart';

class Chat {
  late String name;
  late String message;
  late String avatar;
  late String time;
  Chat(
      {required this.name,
      required this.message,
      required this.avatar,
      required this.time});
}

List<Chat> chats = [
  Chat(
    message: "Hi There",
    name: "Hari",
    avatar: 'assets/hari.jpg',
    time: '2.00pm',
  ),
  Chat(
    message: "iam Here",
    name: "Sooraj",
    avatar: 'assets/sooraj.jpg',
    time: '1.54 pm',
  ),
  Chat(
    message: "Send me   500 rupees",
    name: "Ziyad",
    avatar: 'assets/ziyad.jpg',
    time: '1.45 pm',
  ),
  Chat(
    message: "Evde vro",
    name: "Ajith",
    avatar: 'assets/ajith.jpg',
    time: '1.00pm',
  ),
];
