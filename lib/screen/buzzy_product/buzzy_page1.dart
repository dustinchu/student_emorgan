import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/widgets/circular_container.dart';
import 'package:emorgan/common/widgets/product_left_hover.dart';
import 'package:emorgan/common/widgets/product_right_hover.dart';
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
bool lowStart = false;
bool batteryStart = false;
bool siliconeStart = false;
bool graphyStart = false;

class _BuzzyPage1State extends State<BuzzyPage1> with TickerProviderStateMixin {
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
                      style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(fontSize: 16, color: Color(0xFF364146)),
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
                Text("Pulse to Pain",
                  style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(fontSize: 22, color: Color(0xFF364146)),
                                ),
                  ),
                Text("Buzzy",
                 style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(fontSize: 32, color: Color(0xFF364146)),
                                ),
                  ),
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
80.2  x  59.4  x  12.0   mm''',
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
                      top: ((w / 5 + 50) / 10) * 1.7,
                      //白色區域分成40等分
                      left: (w - ((w / 3 - 150) * 2)) / 40 * 13,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {},
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              lowStart = true;
                            });
                          } else {
                            setState(() {
                              lowStart = false;
                            });
                          }
                        },
                        child: CircularContainer()
                      ),
                    ),
                    //左2Hover
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 7,
                      //白色區域分成40等分
                      left: (w - ((w / 3 - 150) * 2)) / 40 * 12.5,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {},
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              batteryStart = true;
                            });
                          } else {
                            setState(() {
                              batteryStart = false;
                            });
                          }
                        },
                        child: CircularContainer()
                      ),
                    ),
                    //右一Hover
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 5.2,
                      //白色區域分成40等分
                      right: (w - ((w / 3 - 150) * 2)) / 40 * 15.5,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {},
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              siliconeStart = true;
                            });
                          } else {
                            setState(() {
                              siliconeStart = false;
                            });
                          }
                        },
                        child: CircularContainer()
                      ),
                    ),

                    //右二Hover
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 9,
                      //白色區域分成40等分
                      right: (w - ((w / 3 - 150) * 2)) / 40 * 15,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {},
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              graphyStart = true;
                            });
                          } else {
                            setState(() {
                              graphyStart = false;
                            });
                          }
                        },
                        child: CircularContainer()
                      ),
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
                      top: ((w / 5 + 50) / 10) * 1.7,
                      left: 0,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        child: lowStart
                            ? Product_left_hover(
                                lineWidth: line_page1_left_width_size(w / 5),
                                title: "Low-frequency\nTherapy",
                                body: '''\nBuzzy provide the electric
shock which was translated
from the blood flow speed.''',
                              )
                            : Container(),
                      ),
                    ),
                    //左2資訊
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 7.2,
                      left: 0,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        child: batteryStart
                            ? Product_left_hover(
                                lineWidth: line_page1_lef2_width_size(w / 5),
                                title: "Battery",
                                body: '''\nThe electric power is from
the battery which can
supply power continuously
for 14 years.
''',
                              )
                            : Container(),
                      ),
                    ),
                    //右一資訊
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 5.4,
                      right: 0,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        child: siliconeStart
                            ? Product_Right_hover(
                                lineWidth: line_page1_width_right1_size(w / 5),
                                title: "Biomedical Silicone",
                                body: '''\nDUsing high skin-friendly
material to avoid skin
allergies.''',
                              )
                            : Container(),
                      ),
                    ),
                    //右二資訊
                    Positioned(
                      top: ((w / 5 + 50) / 10) * 9.3,
                      right: 0,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        child: graphyStart
                            ? Product_Right_hover(
                                lineWidth: line_page1_width_right2_size(w / 5),
                                title: "PhotoPlethysmoGraphy",
                                body: '''\nBuzzy detect the speed of
blood flow and translated it
into electric shock data.''',
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
                    '''Imitate the shape of human spine. The main form is an long acute triangle with smooth surface.''',
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
                            '''Biomedical Metal 
Biomedical Ceramics
Biomedical Silicone

All the materials are also non-toxic and
biological.''',
                            w)),
                    Expanded(
                        child: msg(
                            "Technology",
                            '''PhotoPlethysmoGraphy
Low-frequency Therapy

Buzzy patches create the electric shock
transferred from partners’ pulse.''',
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
