import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/widgets/circular_container.dart';
import 'package:emorgan/common/widgets/detsIntroAnimation.dart';
import 'package:emorgan/common/widgets/product_left_animation_hover.dart';
import 'package:emorgan/common/widgets/product_left_hover.dart';
import 'package:emorgan/common/widgets/product_right_animation_hover.dart';
import 'package:emorgan/common/widgets/product_right_hover.dart';
import 'package:emorgan/screen/order/order_shopping_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'obi_line_size.dart';
import 'product_text.dart';

class ObiPage1 extends StatefulWidget {
  ObiPage1({Key key}) : super(key: key);

  @override
  _ObiPage1State createState() => _ObiPage1State();
}

AnimationController controller;
Animation<Offset> animation;
DetsIntroAnimation left1InfoAnimation;
DetsIntroAnimation right1InfoAnimation;
DetsIntroAnimation right2InfoAnimation;

AnimationController controllerLeft1;
AnimationController controllerRight1;
AnimationController controllerRight2;

class _ObiPage1State extends State<ObiPage1> with TickerProviderStateMixin {
  @override
  void initState() {
    controllerLeft1 = new AnimationController(
        duration: const Duration(milliseconds: 1300), vsync: this);
    controllerRight1 = new AnimationController(
        duration: const Duration(milliseconds: 1300), vsync: this);
    controllerRight2 = new AnimationController(
        duration: const Duration(milliseconds: 1300), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controllerLeft1.dispose();
    controllerRight1.dispose();
    controllerRight2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 1100;

    left1InfoAnimation = DetsIntroAnimation(
      controllerLeft1,
      line_page1_left_width_size(w / 13),
    );
    right1InfoAnimation = DetsIntroAnimation(
      controllerRight1,
      line_page1_width_right1_size(w / 13),
    );
    right2InfoAnimation = DetsIntroAnimation(
      controllerRight2,
      line_page1_width_right2_size(w / 15),
    );

    return Container(
      width: w,
      height: h,
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 40,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: Color(0xFF7A82A7),
                  ),
                  Text(
                    "Back",
                    style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 16, color: Color(0xFF364146)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 40,
              top: 40,
              child: Material(
                child: InkWell(
                  onTap: () {
                    MaterialPageRoute(
                        builder: (context) => OrderShoppingCode());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: new BoxDecoration(
                      border: new Border.all(
                          color: Color(0xFF7A82A7), width: 4), // 邊色寬度
                      color: Color(0xFF7A82A7),
                      borderRadius: new BorderRadius.circular((60)), // 圆角度
                    ),
                    child: Text(
                      "ORDER NOW",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_small_size(w) - 1,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )),
          Positioned(
            left: 40,
            top: h / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Voice to Vibrate",
                  style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 22, color: Color(0xFF364146))),
                ),
                Text(
                  "Obi",
                  style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 32, color: Color(0xFF364146))),
                ),
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: w / 3 - 100, vertical: 70),
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(
                      "Emorgan",
                      '''
DIMENSIONS
26.0  x  26.7  x  36.0  mm''',
                      w),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25, bottom: 25),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/obi_item.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: w / 7 ,
                            height: w / 7 ,
                          ),
                        ],
                      ),
                      //圖片總高(w / 5 +50)
                      //  /10分成十等分
                      //w / 3 - 150 ＝左右邊界寬度
                      //(w-((w / 3 - 150)*2))得到中間頁面的寬度
                      // 白色區域中間(w-((w / 3 - 150)*2))/2,
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 4.2,
                        //白色區域分成40等分
                        left: (w - ((w / 3 - 150) * 2)) / 40 * 8,
                        child: InkWell(
                            hoverColor: Colors.transparent,
                            onTap: () {},
                            onHover: (value) {
                              if (value) {
                                controllerLeft1.forward();
                              } else {
                                controllerLeft1.reverse();
                              }
                            },
                            child: AnimatedBuilder(
                                animation: left1InfoAnimation.controller,
                                builder: (BuildContext context, Widget child) {
                                    return CircularContainer(infoAnimation:left1InfoAnimation);
                                }),),
                      ),
                      //右一Hover
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 1.7,
                        //白色區域分成40等分
                        right: (w - ((w / 3 - 150) * 2)) / 40 * 8.5,
                        child: InkWell(
                            hoverColor: Colors.transparent,
                            onTap: () {},
                            onHover: (value) {
                              if (value) {
                                controllerRight1.forward();
                              } else {
                                controllerRight1.reverse();
                              }
                            },
                           child: AnimatedBuilder(
                                animation: right1InfoAnimation.controller,
                                builder: (BuildContext context, Widget child) {
                                      return CircularContainer(infoAnimation:right1InfoAnimation);
                                }),),
                      ),
                      //右二Hover
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 7.2,
                        //白色區域分成40等分
                        right: (w - ((w / 3 - 150) * 2)) / 40 * 8.8,
                        child: InkWell(
                            hoverColor: Colors.transparent,
                            onTap: () {},
                            onHover: (value) {
                              if (value) {
                                controllerRight2.forward();
                              } else {
                                controllerRight2.reverse();
                              }
                            },
                            child: AnimatedBuilder(
                                animation: right2InfoAnimation.controller,
                                builder: (BuildContext context, Widget child) {
                                  return CircularContainer(infoAnimation:right2InfoAnimation);
                                }),),
                      ),

                      //左1
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 4.3,
                        left: 0,
                        child: AnimatedBuilder(
                            animation: left1InfoAnimation.controller,
                            builder: (BuildContext context, Widget child) {
                              return Product_left_animation_hover(
                                infoAnimation: left1InfoAnimation,
                                // lineWidth:
                                //     line_page1_left_width_size(w / 7.8),
                                title: "Blood Flow Power",
                                body: '''\nWhile blood is flowing in 
vein, it will move the leads
back and forth to generate
electricity.''',
                              );
                            }),
                      ),
                      //右一資訊
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 1.96,
                        right: 0,
                        child: AnimatedBuilder(
                            animation: right1InfoAnimation.controller,
                            builder: (BuildContext context, Widget child) {
                              return Product_right_animation_hover(
                                infoAnimation: right1InfoAnimation,
                                title: "Fixed Forks",
                                body: '''\nThere will be 4 forks made
of Nitinol with shape
memory to fix emorgan at
the right position.
''',
                              );
                            }),
//                         child: forksStart
//                             ? Product_Right_hover(
//                                 lineWidth:
//                                     line_page1_width_right1_size(w / 13),
//                                 title: "Fixed Forks",
//                                 body: '''\nThere will be 4 forks made
// of Nitinol with shape
// memory to fix emorgan at
// the right position.
// ''',
//                               )
//                             : Container(),
                      ),
                      //右二資訊
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 7.6,
                        right: 0,
                        child: AnimatedBuilder(
                            animation: right2InfoAnimation.controller,
                            builder: (BuildContext context, Widget child) {
                              return Product_right_animation_hover(
                                infoAnimation: right2InfoAnimation,
                                title: "Light Sign",
                                body: '''\nDuring the operation, the
light will remind doctors if
the pairing is successful.''',
                              );
                            }),
//                         child: lightStart
//                             ? Product_Right_hover(
//                                 lineWidth:
//                                     line_page1_width_right2_size(w / 15),
//                                 title: "Light Sign",
//                                 body: '''\nDuring the operation, the
// light will remind doctors if
// the pairing is successful.''',
//                               )
//                             : Container(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  title(
                      "Design",
                      '''\nThe shape idea is from human heart. The main form is a short ellipse with smooth surface and tissue-friendly to avoid any danger during transplantation and removal.''',
                      w),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      msg(
                          "Material",
                          '''TBiomedical Metal
Biomedical Ceramics
Biomedical Polymer

All the materials are also non-toxic and
biological.''',
                          w),
                      Expanded(child: Container()),
                      msg(
                          "Technology",
                          '''Hertz Creation

Providing the vibrate which was transferred from
voice ingredient by Obi patch.''',
                          w)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
