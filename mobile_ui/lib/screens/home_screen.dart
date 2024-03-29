import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatelessWidget {
  final _dummyImages = [
    "https://static01.nyt.com/images/2019/02/03/travel/03frugal-srilanka01/merlin_148552275_74c0d250-949c-46e0-b8a1-e6d499e992cf-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
    "https://bestoflanka.com/images/best-things-to-do-in-sri-lanka/trekking-and-Hiking-in-sri-lanka/thumb/04.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXq6XrAUiv8MAeBJroaupwkw2nsrtbCGyZ17TAC33BWqGtsvC8",
    "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/07/10/11/istock-626036388.jpg",
    "https://www.flashpack.com/wp-content/uploads/2018/10/WebHeaderTemplate-Srilanka.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
          // 'TREFLOR',
          // style: TextStyle(color: Color.fromRGBO(130, 199, 165, 1)),
        // ),
        title: Image.asset("assets/treflor_logo.png", height: 50.0,),
        backgroundColor: Color.fromRGBO(13, 71, 161, 0.6),
        actions: <Widget>[
          // IconButton(
            // onPressed: () => null,
            // icon: Icon(Icons.search, color: Color.fromRGBO(130, 199, 165, 1),),
          // ),
          // IconButton(
            // onPressed: () => null,
            // icon: Icon(Icons.account_circle, size: 40.0, color: Color.fromRGBO(130, 199, 165, 1),),
          // ),
          CircleAvatar(
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              child: ClipOval(
                child: Image.asset("assets/profile.jpg"),
              ),
              onTap: () {},
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 10.0),),
        ],
      ),
      body: Container(
        child: SizedBox(
          height: 250,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 5,
                    color: Colors.white,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    _dummyImages[index],
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
            itemCount: _dummyImages.length,
            itemWidth: double.infinity,
            itemHeight: 250.0,
            layout: SwiperLayout.TINDER,
          ),
        ),
      ),
    );
  }
}
