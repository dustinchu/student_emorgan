import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  bool isShowItem1 = false;
  bool isShowItem2 = false;
  bool isShowItem3 = false;
  bool isShowItem4 = false;
  bool isShowItem5 = false;
  bool isShowItem6 = false;
  bool autoPlaty = true;
  @override
  Widget build(BuildContext context) {
    //  double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: 700,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/help.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.3,
              height: 700.0,
              autoPlay: autoPlaty,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: [
              Item(
                imgPath: "assets/play1.png",
                hover: (value) {
                  // if (value) {
                  //   print("play1 value==true");
                  // } else {
                  //   print("play1 value==false");
                  // }
                  if (value) {
                    setState(() {
                      isShowItem1 = true;
                      autoPlaty = false;
                    });
                  } else {
                    setState(() {
                      autoPlaty = true;
                      isShowItem1 = false;
                    });
                  }
                },
                isShow: isShowItem1,
              ),
              Item(
                imgPath: "assets/play2.png",
                hover: (value) {
                  // if (value) {
                  //   print("play2 value==true");
                  // } else {
                  //   print("play2 value==false");
                  // }
                  if (value) {
                    setState(() {
                      isShowItem2 = true;
                      autoPlaty = false;
                    });
                  } else {
                    setState(() {
                      autoPlaty = true;
                      isShowItem2 = false;
                    });
                  }
                },
                isShow: isShowItem2,
              ),
              Item(
                imgPath: "assets/play3.png",
                hover: (value) {
                  // if (value) {
                  //   print("play3 value==true");
                  // } else {
                  //   print("play3 value==false");
                  // }
                  if (value) {
                    setState(() {
                      isShowItem3 = true;
                      autoPlaty = false;
                    });
                  } else {
                    setState(() {
                      autoPlaty = true;
                      isShowItem3 = false;
                    });
                  }
                },
                isShow: isShowItem3,
              ),
              Item(
                imgPath: "assets/play4.png",
                hover: (value) {
                  // if (value) {
                  //   print("play4 value==true");
                  // } else {
                  //   print("play4 value==false");
                  // }

                  if (value) {
                    setState(() {
                      isShowItem4 = true;
                      autoPlaty = false;
                    });
                  } else {
                    setState(() {
                      autoPlaty = true;
                      isShowItem4 = false;
                    });
                  }
                },
                isShow: isShowItem4,
              ),
              Item(
                imgPath: "assets/play5.png",
                hover: (value) {
                  // if (value) {
                  //   print("play5 value==true");
                  // } else {
                  //   print("play5 value==false");
                  // }
                  if (value) {
                    setState(() {
                      isShowItem5 = true;
                      autoPlaty = false;
                    });
                  } else {
                    setState(() {
                      autoPlaty = true;
                      isShowItem5 = false;
                    });
                  }
                },
                isShow: isShowItem5,
              ),
              Item(
                imgPath: "assets/play6.png",
                hover: (value) {
                  // if (value) {
                  //   print("play6 value==true");
                  // } else {
                  //   print("play6 value==false");
                  // }
                  if (value) {
                    setState(() {
                      isShowItem6 = true;
                      autoPlaty = false;
                    });
                  } else {
                    setState(() {
                      autoPlaty = true;
                      isShowItem6 = false;
                    });
                  }
                },
                isShow: isShowItem6,
              )
            ],
            // items: cardList.map((card) {
            //   return Builder(builder: (BuildContext context) {
            //     return Center(
            //       child: card,
            //     );
            //   });
            // }).toList(),
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item(
      {Key key,
      @required this.imgPath,
      @required this.hover,
      @required this.isShow})
      : super(key: key);
  final String imgPath;
  final ValueChanged<bool> hover;
  final bool isShow;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 100),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.fill,
            ),
          ),
          width: 500,
          height: 500,
        ),
        InkWell(
            onTap: () {},
            onHover: hover,
            child: isShow
                ? Container(
                    margin: EdgeInsets.symmetric(vertical: 100),
                    width: 500,
                    height: 500,
                     color: Color(0x807A82A7),
                  )
                : Container(
                   margin: EdgeInsets.symmetric(vertical: 100),
                    width: 500,
                    height: 500,
                    color: Colors.transparent,
                  ))
      ],
    );
  }
}
