import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:whatsapp/screens/callscreen.dart';
import 'package:whatsapp/screens/chatsscreen.dart';
import 'package:whatsapp/screens/status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 1;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this, initialIndex: selectedTabIndex);
    _tabController.addListener(() {
      setState(() {
        selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 28,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext contesxt) {
            return [
              PopupMenuItem(child: Text("New Group"), value: "New group"),
              PopupMenuItem(
                child: Text("New brodcast"),
                value: "New broadcast",
              ),
              PopupMenuItem(
                child: Text("Whatsapp Web"),
                value: "Whatsapp Web",
              ),
              PopupMenuItem(
                child: Text("Starred messages"),
                value: "Starred messages",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          }),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _pickImageFromCamera,
              child: Text("Camera"),
            ),
          ),
          ChatScreen(),
          statusScreen(),
          ChatScreen1()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          selectedTabIndex == 2
              ? Icons.camera_alt
              : selectedTabIndex == 3
                  ? Icons.add_call
                  : Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }

  Future<void> _pickImageFromCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      // Do something with the picked image file (e.g., display or upload).
      File imageFile = File(pickedFile.path);

      // TODO: Implement your logic here
    }
  }
}
