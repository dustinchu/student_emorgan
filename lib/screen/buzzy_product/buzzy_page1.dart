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

import 'buzzy_line_size.dart';
import 'product_text.dart';

class BuzzyPage1 extends StatefulWidget {
  BuzzyPage1({Key key}) : super(key: key);

  @override
  _BuzzyPage1State createState() => _BuzzyPage1State();
}

AnimationController controller;
Animation<Offset> animation;
// Animation<double> animationLeftText1;
// Animation<double> animationLeftdivider1;
DetsIntroAnimation left1InfoAnimation;
DetsIntroAnimation left2InfoAnimation;
DetsIntroAnimation right1InfoAnimation;
DetsIntroAnimation right2InfoAnimation;

AnimationController controllerLeft1;
AnimationController controllerLeft2;
AnimationController controllerRight1;
AnimationController controllerRight2;

class _BuzzyPage1State extends State<BuzzyPage1> with TickerProviderStateMixin {
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
        controllerLeft1, line_page1_left_width_size(w / 7.9));
    left2InfoAnimation = DetsIntroAnimation(
        controllerLeft2, line_page1_lef2_width_size(w / 8));
    right1InfoAnimation = DetsIntroAnimation(
        controllerRight1, line_page1_width_right1_size(w / 7));
    right2InfoAnimation = DetsIntroAnimation(
      controllerRight2,
      line_page1_width_right2_size(w / 7),
    );

    return Container(
        width: w,
        height: h,
        child: Stack(
          children: [
           
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
80.2  x  59.4  x  12.0  mm''',
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
                                  image: AssetImage("assets/Buzzy_item.png"),
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
                          top: ((w / 5 + 50) / 10) * 2.3,
                          //白色區域分成40等分
                          left: (w - ((w / 3 - 150) * 2)) / 40 * 9,
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
                                    return CircularContainer(infoAnimation:left1InfoAnimation);
                                }),
                          ),
                        ),
                        //左2Hover
                        Positioned(
                          top: ((w / 5 + 50) / 10) * 7,
                          //白色區域分成40等分
                          left: (w - ((w / 3 - 150) * 2)) / 40 * 9.2,
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
                                    return CircularContainer(infoAnimation:left2InfoAnimation);
                                }),),
                        ),
                        //右一Hover
                        Positioned(
                          top: ((w / 5 + 50) / 10) * 5,
                          //白色區域分成40等分
                          right: (w - ((w / 3 - 150) * 2)) / 40 * 12,
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
                                      return CircularContainer(infoAnimation:right1InfoAnimation);
                                }),),
                        ),

                        //右二Hover
                        Positioned(
                          top: ((w / 5 + 50) / 10) * 8.8,
                          //白色區域分成40等分
                          right: (w - ((w / 3 - 150) * 2)) / 40 * 12.5,
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
                        // Positioned(
                        //   top: ((w / 5 + 50) / 10) * 1,
                        //   left: 0,
                        //   child: AnimatedSwitcher(
                        //       duration: const Duration(milliseconds: 600),
                        //       child: Text("${w / 5}")),
                        // ),
                        //左1
                        Positioned(
                          top: ((w / 5 + 50) / 10) * 2.3,
                          left: 0,
                          child: AnimatedBuilder(
                              animation: left1InfoAnimation.controller,
                              builder: (BuildContext context, Widget child) {
                                return Product_left_animation_hover(
                                  infoAnimation: left1InfoAnimation,
                                  // lineWidth:
                                  //     line_page1_left_width_size(w / 7.8),
                                  title: "Low-frequency\nTherapy",
                                  body: '''\nBuzzy provide the electric
shock which was translated
from the blood flow speed.''',
                                );
                              }),
                        ),
                        //左2資訊
                        Positioned(
                          top: ((w / 5 + 50) / 10) * 7.3,
                          left: 0,
                          child: AnimatedBuilder(
                              animation: left2InfoAnimation.controller,
                              builder: (BuildContext context, Widget child) {
                                return Product_left_animation_hover(
                                  infoAnimation: left2InfoAnimation,
                                  // lineWidth:
                                  //     line_page1_left_width_size(w / 7.8),
                                  title: "Battery",
                                  body: '''\nThe electric power is from
the battery which can
supply power continuously
for 14 years.
''',
                                );
                              }),
                        ),
                        //右一資訊
                        Positioned(
                          top: ((w / 5 + 50) / 10) * 5.3,
                          right: 0,
                          child: AnimatedBuilder(
                              animation: right1InfoAnimation.controller,
                              builder: (BuildContext context, Widget child) {
                                return Product_right_animation_hover(
                                  infoAnimation: right1InfoAnimation,
                                  title: "Biomedical Silicone",
                                  body: '''\nUsing high skin-friendly
material to avoid skin
allergies.''',
                                );
                              }),
//                               siliconeStart
//                               ? Product_Right_hover(
//                                   lineWidth:
//                                       line_page1_width_right1_size(w / 8),
//                                   title: "Biomedical Silicone",
//                                   body: '''\nDUsing high skin-friendly
// material to avoid skin
// allergies.''',
//                                 )
//                               : Container(),
                        ),
                        //右二資訊
                        Positioned(
                          top: ((w / 5 + 50) / 10) * 9,
                          right: 0,
                          child: AnimatedBuilder(
                              animation: right2InfoAnimation.controller,
                              builder: (BuildContext context, Widget child) {
                                return Product_right_animation_hover(
                                  infoAnimation: right2InfoAnimation,
                                  title: "PhotoPlethysmoGraphy",
                                  body: '''\nBuzzy detect the speed of
blood flow and translated it
into electric shock data.''',
                                );
                              }),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    title(
                        "Design",
                        '''\nImitate the shape of human spine. The main form is an long acute triangle with smooth surface.''',
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
Biomedical Silicone

All the materials are also non-toxic and
biological.''',
                            w),
                        Expanded(child: Container()),
                        msg(
                            "Technology",
                            '''PhotoPlethysmoGraphy
Low-frequency Therapy

Buzzy patches create the electric shock
transferred from partners’ pulse.''',
                            w)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
