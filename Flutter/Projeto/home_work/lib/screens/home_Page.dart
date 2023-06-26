import 'package:flutter/material.dart';
import 'package:home_work/screens/chatPage.dart';
import 'package:home_work/screens/profile.dart';
import 'package:home_work/screens/channel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": const ChatPage(), 'title': 'Chats'},
    {"screen": Channel(), 'title': 'Channels'},
    {"screen": Profile(), 'title': 'Profile'}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
          title: Text(_screens[_selectedScreenIndex]["title"]),
          ),
          */
      body: _screens[_selectedScreenIndex]["screen"],
      /* Container(
          child: const Center(child: Text("Chat")),
        ),*/
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: 'Channels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
