import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeImagePlay extends StatefulWidget {
  HomeImagePlay({Key key}) : super(key: key);

  @override
  _HomeImagePlayState createState() => _HomeImagePlayState();
}

final List<String> imgList = [
  'assets/1.png',
  'assets/2.png',
  'assets/3.png',
  'assets/4.png',
  'assets/5.png',
];

class _HomeImagePlayState extends State<HomeImagePlay> {
  @override
  Widget build(BuildContext context) {
        double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: 375,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/help.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 100),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 175,
             autoPlay: true,
             viewportFraction:0.5,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
          ),
          items: imgList.map((item) => Container(
            child: Center(
              child: Image.asset(item)
            ),
          )).toList(),
        )
      );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item),
                  ],
                )),
          ),
        ))
    .toList();
