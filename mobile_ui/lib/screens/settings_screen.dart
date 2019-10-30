import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Color.fromRGBO(130, 199, 165, 1)
          ),
        ),
        actions: <Widget>[
          Icon(Icons.search, color: Color.fromRGBO(130, 199, 165, 1),),
          Padding(padding: EdgeInsets.only(right: 20.0),)
        ],
        backgroundColor: Color.fromRGBO(13, 71, 161, 0.6),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('General')
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications')
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy')
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security')
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help')
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text('About')
          ),
          // Padding(padding: EdgeInsets.only(top: 300.0),),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}