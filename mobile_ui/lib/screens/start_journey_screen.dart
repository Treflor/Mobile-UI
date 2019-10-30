import 'package:flutter/material.dart';

class StartJourneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Start Journey',
          style: TextStyle(
            color: Color.fromRGBO(130, 199, 165, 1)
          ),
        ),
        backgroundColor: Color.fromRGBO(13, 71, 161, 0.6),
      ),
    );
  }
}