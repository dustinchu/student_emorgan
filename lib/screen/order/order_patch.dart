import 'package:emorgan/provider/account.dart';
import 'package:emorgan/util/order_page_status.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'order_appbar.dart';
import 'order_circle.dart';
import 'order_information.dart';
import 'order_shopping_code.dart';

class OrderPatch extends StatefulWidget {
  OrderPatch({Key key}) : super(key: key);

  @override
  _OrderPatchState createState() => _OrderPatchState();
}

class _OrderPatchState extends State<OrderPatch> {
  bool nextStatus = false;
  String leftClick = "";
  String rightClick = "";
  String leftImagePath = "assets/patch_init.png";
  String rightImagePath = "assets/patch_init.png";
  String pushPageImagePathLeft = "";
  String pushPageImagePathRight = "";
  bool clickDefault = true;
  void leftShali() {
    leftClick = "shali";
    if (rightClick == "buzzy") {
      rightClick = "";
    }
    if (rightClick == "") {
      leftImagePath = "assets/patch_l_shali_left.png";
      rightImagePath = "assets/patch_l_shali_right.png";
    } else if (rightClick == "shali") {
      leftImagePath = "assets/patch_shali_and_shali_left.png";
      rightImagePath = "assets/patch_shali_and_shali_right.png";

      pushPageImagePathLeft = "assets/info_shali_and_shali_left.png";
      pushPageImagePathRight = "assets/info_shali_and_shali_right.png";
    } else if (rightClick == "obi") {
      leftImagePath = "assets/patch_shali_and_obi_left.png";
      rightImagePath = "assets/patch_shali_and_obi_right.png";

      pushPageImagePathLeft = "assets/info_shali_and_obi_left.png";
      pushPageImagePathRight = "assets/info_shali_and_obi_right.png";
    } else if (rightClick == "buzzy") {
      leftImagePath = "assets/patch_buzzy_left.png";
      rightImagePath = "assets/patch_buzzy_right.png";

      pushPageImagePathLeft = "assets/info_buzzy_and_buzzy_left.png";
      pushPageImagePathRight = "assets/info_buzzy_and_buzzy_right.png";
    }
    Provider.of<AccountStatus>(context, listen: false)
        .setAccountName1("SHALI", "assets/order_shali.png", "Shali");

    setState(() {});
  }

  void rightShali() {
    rightClick = "shali";
    if (leftClick == "buzzy") {
      leftClick = "";
    }
    if (leftClick == "") {
      leftImagePath = "assets/patch_r_shali_left.png";
      rightImagePath = "assets/patch_r_shali_right.png";
    } else if (leftClick == "shali") {
      leftImagePath = "assets/patch_shali_and_shali_left.png";
      rightImagePath = "assets/patch_shali_and_shali_right.png";

      pushPageImagePathLeft = "assets/info_shali_and_shali_left.png";
      pushPageImagePathRight = "assets/info_shali_and_shali_right.png";
    } else if (leftClick == "obi") {
      leftImagePath = "assets/patch_obi_and_shali_left.png";
      rightImagePath = "assets/patch_obi_and_shali_right.png";

      pushPageImagePathLeft = "assets/info_obi_and_shali_left.png";
      pushPageImagePathRight = "assets/info_obi_and_shali_right.png";
    } else if (rightClick == "buzzy") {
      leftImagePath = "assets/patch_buzzy_left.png";
      rightImagePath = "assets/patch_buzzy_right.png";

      pushPageImagePathLeft = "assets/info_buzzy_and_buzzy_left.png";
      pushPageImagePathRight = "assets/info_buzzy_and_buzzy_right.png";
    }

    Provider.of<AccountStatus>(context, listen: false)
        .setAccountName2("SHALI", "assets/order_shali.png", "Shali");
    setState(() {});
  }

  void leftObi() {
    leftClick = "obi";
    if (rightClick == "buzzy") {
      rightClick = "";
    }
    if (rightClick == "") {
      leftImagePath = "assets/patch_l_obi_left.png";
      rightImagePath = "assets/patch_l_obi_right.png";
    } else if (rightClick == "shali") {
      leftImagePath = "assets/patch_obi_and_shali_left.png";
      rightImagePath = "assets/patch_obi_and_shali_right.png";

      pushPageImagePathLeft = "info_obi_and_shali_left.png";
      pushPageImagePathRight = "info_obi_and_shali_right.png";
    } else if (rightClick == "obi") {
      leftImagePath = "assets/patch_obi_and_obi_left.png";
      rightImagePath = "assets/patch_obi_and_obi_right.png";

      pushPageImagePathLeft = "info_obi_and_obi_left.png";
      pushPageImagePathRight = "info_obi_and_obi_right.png";
    } else if (rightClick == "buzzy") {
      leftImagePath = "assets/patch_buzzy_left.png";
      rightImagePath = "assets/patch_buzzy_right.png";

      pushPageImagePathLeft = "assets/info_buzzy_and_buzzy_left.png";
      pushPageImagePathRight = "assets/info_buzzy_and_buzzy_right.png";
    }
    Provider.of<AccountStatus>(context, listen: false)
        .setAccountName1("OBI", "assets/order_obi.png", "Obi");
    setState(() {});
  }

  void rightObi() {
    rightClick = "obi";
    if (leftClick == "buzzy") {
      leftClick = "";
    }
    if (leftClick == "") {
      leftImagePath = "assets/patch_r_obi_left.png";
      rightImagePath = "assets/patch_r_obi_right.png";
    } else if (leftClick == "shali") {
      leftImagePath = "assets/patch_shali_and_obi_left.png";
      rightImagePath = "assets/patch_shali_and_obi_right.png";

      pushPageImagePathLeft = "assets/info_shali_and_obi_left.png";
      pushPageImagePathRight = "assets/info_shali_and_obi_right.png";
    } else if (leftClick == "obi") {
      leftImagePath = "assets/patch_obi_and_obi_left.png";
      rightImagePath = "assets/patch_obi_and_obi_right.png";

      pushPageImagePathLeft = "assets/info_obi_and_obi_left.png";
      pushPageImagePathRight = "assets/info_obi_and_obi_right.png";
    } else if (rightClick == "buzzy") {
      leftImagePath = "assets/patch_buzzy_left.png";
      rightImagePath = "assets/patch_buzzy_right.png";

      pushPageImagePathLeft = "assets/info_buzzy_and_buzzy_left.png";
      pushPageImagePathRight = "assets/info_buzzy_and_buzzy_right.png";
    }
    Provider.of<AccountStatus>(context, listen: false)
        .setAccountName2("OBI", "assets/order_obi.png", "Obi");
    setState(() {});
  }

  void buzzy() {
    rightClick = "buzzy";
    leftClick = "buzzy";
    leftImagePath = "assets/patch_buzzy_left.png";
    rightImagePath = "assets/patch_buzzy_right.png";
    pushPageImagePathLeft = "assets/info_buzzy_and_buzzy_left.png";
    pushPageImagePathRight = "assets/info_buzzy_and_buzzy_right.png";
    Provider.of<AccountStatus>(context, listen: false)
        .setbuzzy("Buzzy", "assets/order_buzzy.png", "BUZZY");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    // double h = MediaQuery.of(context).size.height;
    double h = MediaQuery.of(context).size.height;
    List<bool> colorStatus = [false, true, false, false];
    OrderPageStatus _orderStatus = OrderPageStatus();

    Widget title(String text1, String text2, double w, double padding) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: w,
            height: 100,
            child: Text(
              text1,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Color(0xFF424648), fontSize: 22)),
            ),
          ),
          SizedBox(
            width: padding,
          ),
          Container(
            alignment: Alignment.center,
            width: w,
            child: Text(
              text2,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Color(0xFF424648), fontSize: 22)),
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/help.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: w,
                    height: h,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Expanded(child: Container()),
                        title("Human A", "Human B", 200, 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Circle(
                              isDefault: clickDefault,
                              isClick: leftClick == "shali",
                              isLeft: true,
                              upBtn: leftShali,
                              imgPath: "assets/order_shali.png",
                              text: "SHALI",
                              smill: false,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Circle(
                              isDefault: clickDefault,
                              isClick: rightClick == "shali",
                              isLeft: false,
                              upBtn: rightShali,
                              imgPath: "assets/order_shali.png",
                              text: "SHALI",
                              smill: false,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Circle(
                              isDefault: clickDefault,
                              isClick: leftClick == "obi",
                              isLeft: true,
                              upBtn: leftObi,
                              imgPath: "assets/order_obi.png",
                              text: "OBI",
                              smill: false,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Circle(
                              isDefault: clickDefault,
                              isClick: rightClick == "obi",
                              isLeft: false,
                              upBtn: rightObi,
                              imgPath: "assets/order_obi.png",
                              text: "OBI",
                              smill: false,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 450,
                          height: 2,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Circle(
                              isDefault: clickDefault,
                              isClick: leftClick == "buzzy",
                              isLeft: true,
                              upBtn: buzzy,
                              imgPath: "assets/order_buzzy.png",
                              text: "BUZZY",
                              smill: false,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Circle(
                              isDefault: clickDefault,
                              isClick: rightClick == "buzzy",
                              isLeft: false,
                              upBtn: buzzy,
                              imgPath: "assets/order_buzzy.png",
                              text: "BUZZY",
                              smill: false,
                            )
                          ],
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: w,
                    height: h,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(child: Container()),
                        title("Human A", "Human B", 350, 100),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 350,
                              height: 650,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(leftImagePath),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Container(
                              width: 350,
                              height: 650,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(rightImagePath),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 0,
              child: OrderAppbar(
                clickPage1: () {
                  if (!_orderStatus.getPage1Status) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderShoppingCode()));
                  }
                },
                colorStatus: colorStatus,
              ),
            ),
            Positioned(
              bottom: 40,
              left: 40,
              child: InkWell(
                onTap: () {
                  _orderStatus.setPage1Status(true);
                  _orderStatus.setPage2Status(true);
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
                      "Back ",
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
              bottom: 40,
              right: 40,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    if (leftClick != "" && rightClick != "")
                      _orderStatus.setPage2Status(false);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderImformation(
                                  leftImagePath: pushPageImagePathLeft,
                                  rightImagePath: pushPageImagePathRight,
                                )));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: new BoxDecoration(
                      border: new Border.all(
                          color: leftClick != "" && rightClick != ""
                              ? Color(0xFF7A82A7)
                              : Color(0x80364146),
                          width: 2), // 邊色寬度
                      color: leftClick != "" && rightClick != ""
                          ? Color(0xFF7A82A7)
                          : Colors.transparent, // 底色
                      borderRadius: new BorderRadius.circular((30)), // 圆角度
                    ),
                    child: Text(
                      "NEXT",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 18,
                            color: leftClick != "" && rightClick != ""
                                ? Colors.white
                                : Color(0x80364146)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Circle extends StatelessWidget {
//   const Circle({Key key, @required this.imgPath, @required this.text})
//       : super(key: key);
//   final String imgPath;
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 200,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.white,
//         border: Border.all(width: 5.0, color: Colors.white),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 120,
//             height: 120,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(imgPath),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             text,
//             style: GoogleFonts.montserrat(
//                 textStyle: TextStyle(color: Color(0xFF424648), fontSize: 20)),
//           )
//         ],
//       ),
//     );
//   }
// }
