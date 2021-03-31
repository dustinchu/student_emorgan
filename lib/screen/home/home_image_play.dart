import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeImagePlay extends StatefulWidget {
  HomeImagePlay({Key key}) : super(key: key);

  @override
  _HomeImagePlayState createState() => _HomeImagePlayState();
}

class _HomeImagePlayState extends State<HomeImagePlay>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  int _currentIndex = 0;
  bool isShowItem1 = false;
  bool isShowItem2 = false;
  bool isShowItem3 = false;
  bool isShowItem4 = false;
  bool isShowItem5 = false;
  bool isShowItem6 = false;
  bool isShowItem7 = false;
  bool autoPlaty = true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
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
            title1: "Obi EMO",
            title2: "Richard",
            title3: "Male Age 23",
            title4: """
It was only after the implantation of
Obi Emorgan that I realized that
there were so many shocking
emotions behind the seemingly
calm words of my partner.
""",
          ),
          Item(
            imgPath: "assets/play2.png",
            hover: (value) {
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
            title1: "Shali EMO",
            title2: "Wen",
            title3: "Female Age 53",
            title4: """
My partner no longer panics when I
cry but instead calms down and tries
to understand my emotions through
his salivary glands, making me feel
pleased.
""",
          ),
          Item(
            imgPath: "assets/play3.png",
            hover: (value) {
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
            title1: "Shali EMO",
            title2: "Wang",
            title3: "Male Age 22",
            title4: """
I’ve been using this product for two
years, and it’s really a wonderful
thing to be able to feel each other’s
emotions with my body.
""",
          ),
          Item(
            imgPath: "assets/play4.png",
            hover: (value) {
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
            title1: "Obi EMO",
            title2: "Fanny",
            title3: "Female Age 51",
            title4: """
My partner doesn’t show his
emotions much. OBI allows me to
feel the fluctuation of my partner’s
voice when he is in a different mood
and gives me another channel to
understand my partner better.
""",
          ),
          Item(
            imgPath: "assets/play5.png",
            hover: (value) {
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
            title1: "Shali EMO",
            title2: "Wiwi",
            title3: "Female Age 27",
            title4: """
I’ve used Shali for two and a half
years, before using Emorgan, my
husband and I had already
participated in 26 times marriage
counselings.
""",
          ),
          Item(
              imgPath: "assets/play6.png",
              hover: (value) {
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
              title1: "Obi EMO",
              title2: "PJ Gong",
              title3: "Male Age 31 ",
              title4: """
It was a new way of empathizing
with my partner as if I had given a
part of myself to my partner, and she
had given me a piece of herself.
"""),
          Item(
              imgPath: "assets/play7.png",
              hover: (value) {
                if (value) {
                  setState(() {
                    isShowItem7 = true;
                    autoPlaty = false;
                  });
                } else {
                  setState(() {
                    autoPlaty = true;
                    isShowItem7 = false;
                  });
                }
              },
              isShow: isShowItem7,
              title1: "Buzzy EMO",
              title2: "Mei",
              title3: "Female Age 42",
              title4: """
When I quarrel with my partner, I
can feel my partner’s heartbeat
through the product’s electric
current, which feels lovely and
always calms down both of us.
"""
)
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item(
      {Key key,
      @required this.imgPath,
      @required this.hover,
      @required this.isShow,
      @required this.title1,
      @required this.title2,
      @required this.title3,
      @required this.title4})
      : super(key: key);
  final String imgPath;
  final ValueChanged<bool> hover;
  final bool isShow;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
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
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    width: 500,
                    height: 500,
                    color: Color(0x807A82A7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          title1,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              title2,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              title3,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          title4,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ))
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
