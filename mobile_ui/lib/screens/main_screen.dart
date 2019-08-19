import 'package:flutter/material.dart';

import 'camera_screen.dart';
import 'home_screen.dart';
import 'routes_screen.dart';
import 'settings_screen.dart';
import 'start_journey_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedIndex = 0;
  var _pages = <Widget>[
    HomeScreen(),
    StartJourneyScreen(),
    CameraScreen(),
    RoutesScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              title: Text('home'),
              icon: Icon(Icons.home),
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              title: Text('Start'),
              icon: Icon(Icons.add),
              backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(
              title: Text('Camera'),
              icon: Icon(Icons.camera),
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              title: Text('Routes'),
              icon: Icon(Icons.navigation),
              backgroundColor: Colors.cyanAccent),
          BottomNavigationBarItem(
              title: Text('Settings'),
              icon: Icon(Icons.settings),
              backgroundColor: Colors.redAccent),
        ],
      ),
    );
  }
}
