import 'package:flutter/material.dart';

class RoutesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Routes',
          style: TextStyle(
            color: Color.fromRGBO(130, 199, 165, 1)
          ),
        ),
        backgroundColor: Color.fromRGBO(13, 71, 161, 0.6),
      ),
    );
  }
}