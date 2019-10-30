import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            title: Text('Home'),
            icon: Icon(FontAwesomeIcons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Camera'),
            icon: Icon(FontAwesomeIcons.camera),
          ),
          BottomNavigationBarItem(
            title: Text('Routes'),
            icon: Icon(FontAwesomeIcons.route),
          ),
          BottomNavigationBarItem(
            title: Text('Settings'),
            icon: Icon(FontAwesomeIcons.cog),
          ),
        ],
      ),
    );
  }
}
