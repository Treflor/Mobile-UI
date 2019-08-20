import 'dart:math';

import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  final _dummyImages = [
    "https://static01.nyt.com/images/2019/02/03/travel/03frugal-srilanka01/merlin_148552275_74c0d250-949c-46e0-b8a1-e6d499e992cf-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
    "https://bestoflanka.com/images/best-things-to-do-in-sri-lanka/trekking-and-Hiking-in-sri-lanka/thumb/04.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXq6XrAUiv8MAeBJroaupwkw2nsrtbCGyZ17TAC33BWqGtsvC8",
    "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/07/10/11/istock-626036388.jpg",
    "https://www.flashpack.com/wp-content/uploads/2018/10/WebHeaderTemplate-Srilanka.jpg",
  ];

  final cameraWidget = SizedBox.expand(
    child: Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.camera_alt),
          Text(
            "Camera",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    ),
  );

  final imageWidget = (url) => SizedBox.expand(
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Photos'),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
              13,
              (index) => index == 0
                  ? cameraWidget
                  : imageWidget(_dummyImages[Random().nextInt(5)])),
        ),
      ),
    );
  }
}
