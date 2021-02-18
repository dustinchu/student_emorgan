import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'order_appbar.dart';
import 'order_circle.dart';
import 'order_information.dart';

class OrderPatch extends StatefulWidget {
  OrderPatch({Key key}) : super(key: key);

  @override
  _OrderPatchState createState() => _OrderPatchState();
}

class _OrderPatchState extends State<OrderPatch> {
  bool nextStatus = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    // double h = MediaQuery.of(context).size.height;
    double h = MediaQuery.of(context).size.height;
    List<bool> colorStatus = [false, true, false, false];
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
                    margin: EdgeInsets.only(top: 100),
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
                              imgPath: "assets/order_shali.png",
                              text: "SHALI",
                              smill: false,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Circle(
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
                              imgPath: "assets/order_obi.png",
                              text: "OBI",
                              smill: false,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Circle(
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
                              imgPath: "assets/order_buzzy.png",
                              text: "BUZZY",
                              smill: false,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Circle(
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
                        SizedBox(
                          height: 100,
                        ),
                        title("Human A", "Human B", 350, 100),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 350,
                              height: 550,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/order_people_left1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Container(
                              width: 350,
                              height: 550,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/order_people_right1.png"),
                                  fit: BoxFit.cover,
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
                colorStatus: colorStatus,
              ),
            ),
            Positioned(
              bottom: 40,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderImformation()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: new BoxDecoration(
                      border: new Border.all(
                          color: Color(0x80364146), width: 2), // 邊色寬度
                      color: Colors.transparent, // 底色
                      borderRadius: new BorderRadius.circular((30)), // 圆角度
                    ),
                    child: Text(
                      "NEXT",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 18,
                            color:
                                nextStatus ? Colors.white : Color(0x80364146)),
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
