import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'order_appbar.dart';
import 'order_patch.dart';

class OrderShoppingCode extends StatefulWidget {
  OrderShoppingCode({Key key}) : super(key: key);

  @override
  _OrderShoppingCodeState createState() => _OrderShoppingCodeState();
}

class _OrderShoppingCodeState extends State<OrderShoppingCode> {
  TextEditingController shoppingCodeContriller;
  bool editStatus = false;
  @override
  void initState() {
    super.initState();
    shoppingCodeContriller = TextEditingController();
    shoppingCodeContriller.addListener(() {
      if (shoppingCodeContriller.text.length > 0) {
        setState(() {
          editStatus = true;
        });
      } else {
        setState(() {
          editStatus = false;
        });
      }
    });
  }

  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    double h = 900;
    List<bool> colorStatus = [true, false, false, false];
    return Scaffold(
      body: Container(
        width: w,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/help.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: w,
          height: 160,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: w / 2,
                  height: h / 2,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 150, vertical: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shopping Code",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF364146),
                                ),
                              ),
                            ),
                            Text(
                              "Enter the code from counselor.",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF364146),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Expanded(
                                child: Container(
                                  color: Color(0xFFF3F2F8),
                                  child: TextField(
                                    cursorColor: Color(0xFFC8C1EF),
                                    controller: shoppingCodeContriller,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                          left: 10,
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  if (editStatus) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderPatch()));
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 5),
                                  decoration: new BoxDecoration(
                                    border: new Border.all(
                                        color: editStatus
                                            ? Colors.transparent
                                            : Color(0x80364146),
                                        width: 2), // 邊色寬度
                                    color: editStatus
                                        ? Color(0xFF7A82A7)
                                        : Colors.transparent, // 底色
                                    borderRadius:
                                        new BorderRadius.circular((30)), // 圆角度
                                  ),
                                  child: Text(
                                    "NEXT",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          color: editStatus
                                              ? Colors.white
                                              : Color(0x80364146)),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 70,
                          bottom: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Book a counseling",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: 16, color: Color(0x80364146)),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Color(0xFF7A82A7),
                                size: 19,
                              ),
                              // Icon(
                              //   Icons.keyboard_arrow_right_outlined,
                              //   color: Color(0xFF7A82A7),
                              //   size: 18,
                              // )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: OrderAppbar(
                  colorStatus: colorStatus,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
