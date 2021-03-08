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

import 'line_size.dart';
import 'product_text.dart';

class ShaliPage1 extends StatefulWidget {
  ShaliPage1({Key key}) : super(key: key);

  @override
  _ShaliPage1State createState() => _ShaliPage1State();
}

AnimationController controller;
Animation<Offset> animation;
// bool forksStart = false;
// bool powerStart = false;
// bool lightStart = false;
// bool thermometeStart = false;
DetsIntroAnimation left1InfoAnimation;
DetsIntroAnimation left2InfoAnimation;
DetsIntroAnimation right1InfoAnimation;
DetsIntroAnimation right2InfoAnimation;

AnimationController controllerLeft1;
AnimationController controllerLeft2;
AnimationController controllerRight1;
AnimationController controllerRight2;

class _ShaliPage1State extends State<ShaliPage1> with TickerProviderStateMixin {
  @override
  void initState() {
    controllerLeft1 = new AnimationController(
        duration: const Duration(milliseconds: 1300), vsync: this);
    controllerLeft2 = new AnimationController(
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
    controllerLeft2.dispose();
    controllerRight1.dispose();
    controllerRight2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 1200;
    left1InfoAnimation = DetsIntroAnimation(
      controllerLeft1,
      line_left_width_size(w / 5.7),
    );
    left2InfoAnimation = DetsIntroAnimation(
      controllerLeft2,
      line_left_width_size(w / 6),
    );
    right1InfoAnimation = DetsIntroAnimation(
      controllerRight1,
      line_width_right_size2(w / 5.5),
    );
    right2InfoAnimation = DetsIntroAnimation(
      controllerRight2,
      line_width_right_size(w / 6.5),
    );

    Widget circularContainer() {
      return Container(
        decoration: new BoxDecoration(
          color: Color(0x80F2F2F2), // 底色
          borderRadius: new BorderRadius.circular((20.0)), // 圆角度
        ),
      );
    }

    return Container(
      width: w,
      height: h,
      child: Stack(
        children: [
          // Positioned(
          //   top: 40,
          //   left: 40,
          //   child: InkWell(
          //     onTap: () {
          //       Navigator.of(context).pop();
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.keyboard_arrow_left_outlined,
          //           color: Color(0xFF7A82A7),
          //         ),
          //         Text(
          //           "Back",
          //           style: GoogleFonts.montserrat(
          //               textStyle:
          //                   TextStyle(fontSize: 16, color: Color(0xFF364146))),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // Positioned(
          //     right: 40,
          //     top: 40,
          //     child: Material(
          //       child: InkWell(
          //         onTap: () {
          //           MaterialPageRoute(
          //               builder: (context) => OrderShoppingCode());
          //         },
          //         child: Container(
          //           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //           decoration: new BoxDecoration(
          //             border: new Border.all(
          //                 color: Color(0xFF7A82A7), width: 4), // 邊色寬度
          //             color: Color(0xFF7A82A7),
          //             borderRadius: new BorderRadius.circular((60)), // 圆角度
          //           ),
          //           child: Text(
          //             "ORDER NOW",
          //             style: GoogleFonts.montserrat(
          //               textStyle: TextStyle(
          //                   fontSize: windows_width_small_size(w) - 1,
          //                   color: Colors.white),
          //             ),
          //           ),
          //         ),
          //       ),
          //     )),
         
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
28.0  x  28.3  x  54.0  mm''',
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
                                image: AssetImage("assets/shali_item.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            width: w / 5 + 20,
                            height: w / 5 + 70,
                          ),
                        ],
                      ),
                      //圖片總高(w / 5 +50)
                      //  /10分成十等分
                      //w / 3 - 150 ＝左右邊界寬度
                      //(w-((w / 3 - 150)*2))得到中間頁面的寬度
                      // 白色區域中間(w-((w / 3 - 150)*2))/2,
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 3 - 10,
                        //白色區域分成40等分
                        left: (w - ((w / 3 - 150) * 2)) / 40 * 12.3,
                        child: InkWell(
                           splashColor: Colors.transparent,
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
                                return CircularContainer(
                                    infoAnimation: left1InfoAnimation);
                              }),
                        ),
                      ),
                      //左二 hover
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 7.6,
                        //白色區域分成40等分
                        left: (w - ((w / 3 - 150) * 2)) / 40 * 14,
                         child: InkWell(
                            splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          onTap: () {},
                          onHover: (value) {
                            if (value) {
                              controllerLeft2.forward();
                            } else {
                              controllerLeft2.reverse();
                            }
                          },
                          child: AnimatedBuilder(
                              animation: left2InfoAnimation.controller,
                              builder: (BuildContext context, Widget child) {
                                return CircularContainer(
                                    infoAnimation: left2InfoAnimation);
                              }),
                        ),
                      ),
                      //右一Hover
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 3 - 10,
                        //白色區域分成40等分
                        right: (w - ((w / 3 - 150) * 2)) / 40 * 14.3,
                        child: InkWell(
                           splashColor: Colors.transparent,
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
                                return CircularContainer(
                                    infoAnimation: right1InfoAnimation);
                              }),
                        ),
                      ),
                      //右二Hover
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 7.8,
                        //白色區域分成40等分
                        right: (w - ((w / 3 - 150) * 2)) / 40 * 10.5,
                        child: InkWell(
                          splashColor: Colors.transparent,
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
                                return CircularContainer(
                                    infoAnimation: right2InfoAnimation);
                              }),
                        ),
                      ),
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 3,
                        left: 0,
                        child: AnimatedBuilder(
                            animation: left1InfoAnimation.controller,
                            builder: (BuildContext context, Widget child) {
                              return Product_left_animation_hover(
                                infoAnimation: left1InfoAnimation,
                                // lineWidth:
                                //     line_page1_left_width_size(w / 7.8),
                                title: "Fixed Forks",
                                body: '''\nThere will be 4 forks made
of Nitinol with shape
memory to fix emorgan at
the right position.''',
                              );
                            }),
//                         child: AnimatedSwitcher(
//                           duration: const Duration(milliseconds: 600),
//                           child: forksStart
//                               ? Product_left_hover(
//                                   lineWidth: line_left_width_size(w / 6),
//                                   title: "Fixed Forks",
//                                   body: '''\nThere will be 4 forks made
// of Nitinol with shape
// memory to fix emorgan at
// the right position.''',
//                                 )
//                               : Container(),
//                         ),
                      ),
                      //左二資訊
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 8,
                        left: 0,

                        child: AnimatedBuilder(
                            animation: left2InfoAnimation.controller,
                            builder: (BuildContext context, Widget child) {
                              return Product_left_animation_hover(
                                infoAnimation: left2InfoAnimation,
                                // lineWidth:
                                //     line_page1_left_width_size(w / 7.8),
                                title: "Blood Flow Power",
                                body: '''\nWhile blood is flowing in
vein, it will move the leads
back and forth to generate
electricity.''',
                              );
                            }),
//                         child: AnimatedSwitcher(
//                           duration: const Duration(milliseconds: 600),
//                           child: powerStart
//                               ? Product_left_hover(
//                                   lineWidth: line_left_width_size(w / 6),
//                                   title: "Blood Flow Power",
//                                   body: '''\nWhile blood is flowing in
// vein, it will move the leads
// back and forth to generate
// electricity.''',
//                                 )
//                               : Container(),
//                         ),
                      ),
                      //右一資訊
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 3,
                        right: 0,
                        child: AnimatedBuilder(
                            animation: right1InfoAnimation.controller,
                            builder: (BuildContext context, Widget child) {
                              return Product_right_animation_hover(
                                infoAnimation: right1InfoAnimation,
                                title: "Thermomete",
                                body: '''\nShali will enhance the taste 
density while it detects
user’s body temperature
changed by emotion.
''',
                              );
                            }),
//                         child: AnimatedSwitcher(
//                             duration: const Duration(milliseconds: 600),
//                             child: thermometeStart
//                                 ? Product_Right_hover(
//                                     lineWidth: line_width_right_size2(w / 6),
//                                     title: "Thermomete",
//                                     body: '''\nShali will enhance the taste
// density while it detects
// user’s body temperature
// changed by emotion.
// ''',
//                                   )
//                                 : Container()),
                      ),
                      //右二資訊
                      Positioned(
                        top: ((w / 5 + 50) / 10) * 8,
                        right: 0,
                        child: AnimatedBuilder(
                            animation: right2InfoAnimation.controller,
                            builder: (BuildContext context, Widget child) {
                              return Product_right_animation_hover(
                                infoAnimation: right2InfoAnimation,
                                title: "Light Sign",
                                body: '''\nDuring the operation,
the light will remind
doctors if the pairing is
successful.''',
                              );
                            }),
//                         child: AnimatedSwitcher(
//                           duration: const Duration(milliseconds: 600),
//                           child: lightStart
//                               ? Product_Right_hover(
//                                   lineWidth: line_width_right_size(w / 7),
//                                   title: "Light Sign",
//                                   body: '''\nDuring the operation,
// the light will remind
// doctors if the pairing is
// successful.''',
//                                 )
//                               : Container(),
//                         ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  title(
                      "Design",
                      '''\nThe shape idea is from human salivary glands. The main form is a long ellipse with smooth surface and tissue-friendly to avoidany danger during transplantation and removal.''',
                      w),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      msg(
                          "Material",
                          '''Biomedical Metal
Biomedical Ceramics
Biomedical Polymer

All the materials are also non-toxic and
biological.''',
                          w),
                      Expanded(child: Container()),
                      msg(
                          "Technology",
                          '''Artificial aromatic compounds

Providing the taste which was transferred from
tear ingredient by Shali patch.''',
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
