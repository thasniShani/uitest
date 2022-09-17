import 'package:flutter/material.dart';
import 'package:ui/chat/chatScreen.dart';

import 'package:ui/chat/widget/chatModel.dart';
import 'package:ui/profile/profile.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  @override
  int _selectedIndex = 0;
  static final List<Widget> _widgetList = [
    ChatScreen(chatDetails: ChatModel()),
    const Text(
      'welcome',
      style: TextStyle(fontSize: 80),
    ),
    const ProfilePage(),
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wifi_channel_sharp), label: 'Channel'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
