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
              title: Text(
                'Home',
                style: TextStyle(color: Color.fromRGBO(130, 199, 165, 1)),
              ),
              icon: Icon(Icons.home, color: Color.fromRGBO(130, 199, 165, 1),),
              backgroundColor: Color.fromRGBO(13, 71, 161, 0.6)),
          BottomNavigationBarItem(
              title: Text(
                'Start',
                style: TextStyle(color: Color.fromRGBO(130, 199, 165, 1)),
              ),
              icon: Icon(Icons.add, color: Color.fromRGBO(130, 199, 165, 1),),
              backgroundColor: Color.fromRGBO(13, 71, 161, 0.6)),
          BottomNavigationBarItem(
              title: Text(
                'Camera',
                style: TextStyle(color: Color.fromRGBO(130, 199, 165, 1)),
              ),
              icon: Icon(Icons.camera, color: Color.fromRGBO(130, 199, 165, 1),),
              backgroundColor: Color.fromRGBO(13, 71, 161, 0.6)),
          BottomNavigationBarItem(
              title: Text(
                'Routes',
                style: TextStyle(color: Color.fromRGBO(130, 199, 165, 1)),
              ),
              icon: Icon(Icons.navigation, color: Color.fromRGBO(130, 199, 165, 1),),
              backgroundColor: Color.fromRGBO(13, 71, 161, 0.6)),
          BottomNavigationBarItem(
              title: Text(
                'Settings',
                style: TextStyle(color: Color.fromRGBO(130, 199, 165, 1)),
              ),
              icon: Icon(Icons.settings, color: Color.fromRGBO(130, 199, 165, 1),),
              backgroundColor: Color.fromRGBO(13, 71, 161, 0.6)),
        ],
      ),
    );
  }
}
