import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/widgets/product_left_hover.dart';
import 'package:emorgan/common/widgets/product_right_hover.dart';
import 'package:flutter/material.dart';

import 'obi_line_size.dart';
import 'product_text.dart';

class ObiPage1 extends StatefulWidget {
  ObiPage1({Key key}) : super(key: key);

  @override
  _ObiPage1State createState() => _ObiPage1State();
}

AnimationController controller;
Animation<Offset> animation;
bool powerStart = false;
bool forksStart = false;
bool lightStart = false;

class _ObiPage1State extends State<ObiPage1> with TickerProviderStateMixin {
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
                    style: TextStyle(fontSize: 16, color: Color(0xFF364146)),
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
                    print("btn;;;");
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
                      style: TextStyle(
                          fontSize: windows_width_small_size(w) - 1,
                          color: Colors.white),
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
                Text("Voice to Vibrate",
                    style: TextStyle(fontSize: 22, color: Color(0xFF364146))),
                Text("Obi",
                    style: TextStyle(fontSize: 32, color: Color(0xFF364146))),
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(left: w / 3 - 150, right: w / 3 - 150, top: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(
                    "Emorgan",
                    '''
DIMENSIONS
26.0  x  26.7  x  36.0   mm''',
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
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: w / 5,
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
                      top: ((w / 5 + 50) / 10) * 4,
                      //白色區域分成40等分
                      left: (w - ((w / 3 - 150) * 2)) / 40 * 13,
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
                      top: ((w / 5 + 50) / 10) * 1.7,
                      //白色區域分成40等分
                      right: (w - ((w / 3 - 150) * 2)) / 40 * 12.5,
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
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    //右二Hover
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 7.2,
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

                    //左1
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 4.1,
                      left: 0,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        child: powerStart
                            ? Product_left_hover(
                                lineWidth: line_page1_left_width_size(w / 5),
                                title: "Blood Flow Power",
                                body: '''\nWhile blood is flowing in 
vein, it will move the leads
back and forth to generate
electricity.''',
                              )
                            : Container(),
                      ),
                    ),
                    //右一資訊
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 1.95,
                      right: 0,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        child: forksStart
                            ? Product_Right_hover(
                                lineWidth: line_page1_width_right1_size(w / 5),
                                title: "Fixed Forks",
                                body: '''\nThere will be 4 forks made
of Nitinol with shape
memory to fix emorgan at
the right position.
''',
                              )
                            : Container(),
                      ),
                    ),
                    //右二資訊
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 7.3,
                      right: 0,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        child: lightStart
                            ? Product_Right_hover(
                                lineWidth: line_page1_width_right2_size(w / 5),
                                title: "Light Sign",
                                body: '''\nDuring the operation, the
light will remind doctors if
the pairing is successful.''',
                              )
                            : Container(),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                title(
                    "Design",
                    '''The shape idea is from human heart. The main form is a short ellipse with smooth surface and tissue-friendly to avoid any
danger during transplantation and removal.''',
                    w),
                SizedBox(
                  height: 60,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: msg(
                            "Material",
                            '''TBiomedical Metal
Biomedical Ceramics
Biomedical Polymer

All the materials are also non-toxic and
biological.''',
                            w)),
                    Expanded(
                        child: msg(
                            "Technology",
                            '''Hertz Creation

Providing the vibrate which was transferred from
voice ingredient by Obi patch.''',
                            w))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
