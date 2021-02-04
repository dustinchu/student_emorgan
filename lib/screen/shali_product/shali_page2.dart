import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/product_line_size.dart';
import 'package:emorgan/common/widgets/product_left_hover.dart';
import 'package:emorgan/common/widgets/product_right_hover.dart';
import 'package:flutter/material.dart';

import 'product_text.dart';

class ShaliPage2 extends StatefulWidget {
  ShaliPage2({Key key}) : super(key: key);

  @override
  _ShaliPage2State createState() => _ShaliPage2State();
}

AnimationController controller;
Animation<Offset> animation;
bool forksStart = false;
bool powerStart = false;
bool lightStart = false;
bool thermometeStart = false;

class _ShaliPage2State extends State<ShaliPage2> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 950;
    return Container(
      width: w,
      height: h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: w / 3 - 150, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(
                "Patch",
                '''
DIMENSIONS 
56.5  x  36.4  x  4.0   mm''',
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
                          image: AssetImage("assets/shali_sub_item.png"),
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
                Positioned(
                  top: ((w / 5 + 50) / 10) * 2,
                  //白色區域分成40等分
                  left: (w - ((w / 3 - 150) * 2)) / 40 * 21,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          forksStart = true;
                        });
                      } else {
                        setState(() {
                          forksStart = false;
                        });
                      }
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.pink,
                    ),
                  ),
                ),
                //左二 hover
                Positioned(
                  top: ((w / 5 + 50) / 10) * 8,
                  //白色區域分成40等分
                  left: (w - ((w / 3 - 150) * 2)) / 40 * 17,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          powerStart = true;
                        });
                      } else {
                        setState(() {
                          powerStart = false;
                        });
                      }
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                //右一Hover
                Positioned(
                  top: ((w / 5 + 50) / 10) * 3,
                  //白色區域分成40等分
                  right: (w - ((w / 3 - 150) * 2)) / 40 * 17,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          thermometeStart = true;
                        });
                      } else {
                        setState(() {
                          thermometeStart = false;
                        });
                      }
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                //右二Hover
                Positioned(
                  top: ((w / 5 + 50) / 10) * 8,
                  //白色區域分成40等分
                  right: (w - ((w / 3 - 150) * 2)) / 40 * 13,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          lightStart = true;
                        });
                      } else {
                        setState(() {
                          lightStart = false;
                        });
                      }
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Positioned(
                  top: ((w / 5 + 50) / 10) * 2,
                  left: 0,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 600),
                    child: forksStart
                        ? Product_left_hover(
                          lineWidth:line_left_width_size2(w/5),
                            title: "Fixed Forks",
                            body: '''\nThere will be 4 forks made
of Nitinol with shape
memory to fix emorgan at
the right position.''',
                          )
                        : Container(),
                  ),
                ),
                //左二資訊
//                 Positioned(
//                   top: ((w / 5 + 50) / 10) * 8,
//                   left: 0,
//                   child: AnimatedSwitcher(
//                     duration: const Duration(milliseconds: 600),
//                     child: powerStart
//                         ? Product_left_hover(
//                             title: "Blood Flow Power",
//                             body: '''\nWhile blood is flowing in
// vein, it will move the leads
// back and forth to generate
// electricity.''',
//                           )
//                         : Container(),
//                   ),
//                 ),
//                 //右一資訊
//                 Positioned(
//                   top: ((w / 5 + 50) / 10) * 3,
//                   right: 0,
//                   child: AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 600),
//                       child: thermometeStart
//                           ? Product_Right_hover(
//                               title: "Thermomete",
//                               body: '''\nShali will enhance the taste 
// density while it detects
// user’s body temperature
// changed by emotion.
// ''',
//                             )
//                           : Container()),
//                 ),
//                 //右二資訊
//                 Positioned(
//                   top: ((w / 5 + 50) / 10) * 8,
//                   right: 0,
//                   child: AnimatedSwitcher(
//                     duration: const Duration(milliseconds: 600),
//                     child: lightStart
//                         ? Product_Right_hover(
//                             title: "Light Sign",
//                             body: '''\nDuring the operation,
// the light will remind
// doctors if the pairing is
// successful.''',
//                           )
//                         : Container(),
//                   ),
//                 )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            title(
                "Design",
                '''Shali Patch is in the shape of bending alined with human face to stay in place. The bulge is to hold the tears dripping.''',
                w),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: msg(
                        "Material",
                        '''The material attached to the face is silicone,
which increase the adhesion between the skin
and the patch to prevent needles from damage.''',
                        w)),
                Expanded(
                    child: msg(
                        "Technology",
                        '''Tear crystal analysis
AI facial analysis
Protein analysis''',
                        w))
              ],
            )
          ],
        ),
      ),
    );
  }
}
