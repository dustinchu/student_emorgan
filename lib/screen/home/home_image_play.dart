import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeImagePlay extends StatefulWidget {
  HomeImagePlay({Key key}) : super(key: key);

  @override
  _HomeImagePlayState createState() => _HomeImagePlayState();
}

final List<String> imgPlayList = [
  'assets/play1.png',
  'assets/play2.png',
  'assets/play3.png',
  'assets/play4.png',
  'assets/play5.png',
];

class _HomeImagePlayState extends State<HomeImagePlay>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
        width: w,
        height: 600,
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
            viewportFraction: 0.5,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imgPlayList
              .map((item) => Container(
                    child: Center(child: Image.asset(item)),
                  ))
              .toList(),
        ));
  }
}

final List<Widget> imageSliders = imgPlayList
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
