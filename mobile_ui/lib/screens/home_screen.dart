import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
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
              title: Text('Add'),
              icon: Icon(Icons.add),
              backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(
              title: Text('Camera'),
              icon: Icon(Icons.camera),
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              title: Text('Routes'),
              icon: Icon(Icons.rate_review),
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
