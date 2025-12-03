import 'package:flutter/material.dart';

class ChatRoomPage extends StatelessWidget {
  final String name;
  const ChatRoomPage({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(name)));
  }
}
