import 'package:emorgan/common/widgets/circular_container.dart';
import 'package:emorgan/common/widgets/detsIntroAnimation.dart';
import 'package:emorgan/common/widgets/product_left_animation_hover.dart';
import 'package:emorgan/common/widgets/product_left_hover.dart';
import 'package:emorgan/common/widgets/product_right_animation_hover.dart';
import 'package:emorgan/common/widgets/product_right_hover.dart';
import 'package:flutter/material.dart';

import 'obi_line_size.dart';
import 'product_text.dart';
import 'top_size.dart';

class ObiPage2 extends StatefulWidget {
  ObiPage2({Key key}) : super(key: key);

  @override
  _ObiPage2State createState() => _ObiPage2State();
}

AnimationController controller;
Animation<Offset> animation;
bool cameraStart = false;
bool microphoneStart = false;
bool batteryStart = false;
bool silicone = false;
DetsIntroAnimation left1InfoAnimation;
DetsIntroAnimation left2InfoAnimation;
DetsIntroAnimation right1InfoAnimation;
DetsIntroAnimation right2InfoAnimation;

AnimationController controllerLeft1;
AnimationController controllerLeft2;
AnimationController controllerRight1;
AnimationController controllerRight2;

class _ObiPage2State extends State<ObiPage2> with TickerProviderStateMixin {
  @override
  void initState() {
    controllerLeft1 = new AnimationController(
        duration: const Duration(milliseconds: 1800), vsync: this);
    controllerLeft2 = new AnimationController(
        duration: const Duration(milliseconds: 1800), vsync: this);
    controllerRight1 = new AnimationController(
        duration: const Duration(milliseconds: 1800), vsync: this);
    controllerRight2 = new AnimationController(
        duration: const Duration(milliseconds: 1800), vsync: this);
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
    double h = 950;
    left1InfoAnimation = DetsIntroAnimation(
      controllerLeft1,
      line_page2_left_width_size(w / 7),
    );
    left2InfoAnimation = DetsIntroAnimation(
      controllerLeft2,
      line_page2_left2_width_size(w / 7),
    );
    right1InfoAnimation = DetsIntroAnimation(
        controllerRight1, line_page2_right1_width_size(w / 7));
    right2InfoAnimation = DetsIntroAnimation(
      controllerRight2,
      line_page2_right2_width_size(w / 8.5),
    );
    return Container(
      width: w,
      height: h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: w / 3 - 100, vertical: 70),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(
                  "Patch",
                  '''
DIMENSIONS 
56.5  x  36.4  x  4.0  mm''',
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
                            image: AssetImage("assets/obi_sub_item.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: w / 5,
                        height: w / 5 + 50,
                      ),
                    ],
                  ),
                  //圖片總高(w / 5 +50)
                  //  /10分成十等分
                  //w / 3 - 150 ＝左右邊界寬度
                  //(w-((w / 3 - 150)*2))得到中間頁面的寬度
                  // 白色區域中間(w-((w / 3 - 150)*2))/2,
                  //左一hovar
                  Positioned(
                    top: ((w / 5 + 50) / 10) * 1.7,
                    //白色區域分成40等分
                    left: (w - ((w / 3 - 150) * 2)) / 40 * 11.5,
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
                  //左二 hover
                  Positioned(
                    top: ((w / 5 + 50) / 10) * 5.3,
                    //白色區域分成40等分
                    left: (w - ((w / 3 - 150) * 2)) / 40 * 12.5,
                    child: InkWell(
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
                    top: ((w / 5 + 50) / 10) * 1.7,
                    //白色區域分成40等分
                    right: (w - ((w / 3 - 150) * 2)) / 40 * 14.5,
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
                    top: ((w / 5 + 50) / 10) * 7,
                    //白色區域分成40等分
                    right: (w - ((w / 3 - 150) * 2)) / 40 * 12,
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
                  //左一
                  Positioned(
                    top: top_size(w / 5, ((w / 5 + 50) / 10) * 2),
                    left: 0,
                    child: AnimatedBuilder(
                        animation: left1InfoAnimation.controller,
                        builder: (BuildContext context, Widget child) {
                          return Product_left_animation_hover(
                            infoAnimation: left1InfoAnimation,
                            // lineWidth:
                            //     line_page1_left_width_size(w / 7.8),
                            title: "Camera",
                            body: '''\nIt detects user’s partner’s
facial expression.''',
                          );
                        }),
//                     child: AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 600),
//                       child: cameraStart
//                           ? Product_left_hover(
//                               lineWidth: line_page2_left_width_size(w / 7),
//                               title: "Camera",
//                               body: '''\nIt detects user’s partner’s
// facial expression.''',
//                             )
//                           : Container(),
                    // ),
                  ),
                  //左二資訊
                  Positioned(
                    top: top_size(w / 5, ((w / 5 + 50) / 10) * 5.6),
                    left: 0,

                    child: AnimatedBuilder(
                        animation: left2InfoAnimation.controller,
                        builder: (BuildContext context, Widget child) {
                          return Product_left_animation_hover(
                            infoAnimation: left2InfoAnimation,
                            // lineWidth:
                            //     line_page1_left_width_size(w / 7.8),
                            title: "Microphone",
                            body: '''\nTCollecting user’s voice and
transfer it into vibrate
data.''',
                          );
                        }),
//                     child: AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 600),
//                       child: microphoneStart
//                           ? Product_left_hover(
//                               lineWidth: line_page2_left2_width_size(w / 7),
//                               title: "Microphone",
//                               body: '''\nTCollecting user’s voice and
// transfer it into vibrate
// data.''',
//                             )
//                           : Container(),
//                     ),
                  ),
//                 //右一資訊
                  Positioned(
                    top: top_size(w / 5, ((w / 5 + 50) / 10) * 2),
                    right: 0,
                    child: AnimatedBuilder(
                        animation: right1InfoAnimation.controller,
                        builder: (BuildContext context, Widget child) {
                          return Product_right_animation_hover(
                            infoAnimation: right1InfoAnimation,
                            title: "Battery",
                            body: '''\nThe electric power is from
the battery which can
supply power continuously
for 14 years.
''',
                          );
                        }),
//                     child: AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 600),
//                       child: batteryStart
//                           ? Product_Right_hover(
//                               lineWidth: line_page2_right1_width_size(w / 7),
//                               title: "Battery",
//                               body: '''\nThe electric power is from
// the battery which can
// supply power continuously
// for 14 years.
// ''',
//                             )
//                           : Container(),
                    // ),
                  ),
//                 //右二資訊
                  Positioned(
                    top: top_size(w / 5, ((w / 5 + 50) / 10) * 7.4),
                    right: 0,
                    child: AnimatedBuilder(
                        animation: right2InfoAnimation.controller,
                        builder: (BuildContext context, Widget child) {
                          return Product_right_animation_hover(
                            infoAnimation: right2InfoAnimation,
                            title: "Biomedical Silicone",
                            body: '''\nUsing high skin-friendly
material to avoid skin
allergies.''',
                          );
                        }),
//                     child: AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 600),
//                       child: silicone
//                           ? Product_Right_hover(
//                               lineWidth: line_page2_right2_width_size(w / 8.5),
//                               title: "Biomedical Silicone",
//                               body: '''\nUsing high skin-friendly
// material to avoid skin
// allergies.''',
//                             )
//                           : Container(),
//                     ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              title(
                  "Design",
                  '''\nObi Patch is in the shape of bending alined with human face to stay in place. The bulge is to hold the tears dripping.''',
                  w),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  msg(
                      "Material",
                      '''The material attached to the face is silicone,
which increase the adhesion between the skin
and the patch to prevent needles from damage.''',
                      w),
                  Expanded(child: Container()),
                  msg(
                      "Technology",
                      '''Tear crystal analysis
AI facial analysis
Protein analysis''',
                      w)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
