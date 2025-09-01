import 'package:flutter/material.dart';
import 'list_page.dart';
import 'welcome_page.dart';
import 'profile_page.dart';
import 'dashboard_page.dart';
import 'grid_page.dart';
import 'grid_page.dart';

import '../whatsapp_pages/home_page.dart';
class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    DashboardPage(),
    GridPage(),
    ProfilePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            backgroundColor: Colors.orange,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: 'profile')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.orange,
        selectedItemColor: Colors.white,
      ),
    );
  }
}



