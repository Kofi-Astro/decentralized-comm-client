import 'package:decentralized_comm_client/pages/calls.dart';
import 'package:decentralized_comm_client/pages/camera.dart';
import 'package:decentralized_comm_client/pages/chat.dart';
import 'package:decentralized_comm_client/pages/home.dart';
import 'package:decentralized_comm_client/pages/settings.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _HomePageState();
}

class _HomePageState extends State<Dashboard> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    ChatPage(),
    Camera(),
    SettingsPage(),
    CallsPage(),
  ];

  void onTapEvent(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KalyxChat'),
        backgroundColor: Colors.deepOrange[300],
      ),
      // body: Center(child: Text('This is the beginning of the app')),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        useLegacyColorScheme: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_rounded),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
        onTap: onTapEvent,
      ),
    );
  }
}
