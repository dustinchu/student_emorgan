import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/widgets/product_circle.dart';
import 'package:emorgan/screen/order/order_shopping_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import 'buzzy_page1.dart';
import 'buzzy_page2.dart';
import 'buzzy_page3.dart';
import 'buzzy_page4.dart';

class BuzzyProductScreen extends StatefulWidget {
  BuzzyProductScreen({Key key}) : super(key: key);

  @override
  _BuzzyProductScreenState createState() => _BuzzyProductScreenState();
}

class _BuzzyProductScreenState extends State<BuzzyProductScreen> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
         
          Container(
            height: h,
            width: w,
            child: VsScrollbar(
              controller: _scrollController,
              // @REQUIRED
              scrollDirection: null,
              allowDrag:
                  true, // allows to scroll the list using scrollbar [Default : true]
              color: Color(0xFFC8C1EF), // sets color of vsScrollBar
              radius: 50, // sets radius of vsScrollBar
              thickness: 8, // sets thickness of vsScrollBar
              scrollbarFadeDuration: Duration(milliseconds: 500),
              scrollbarTimeToFade: Duration(milliseconds: 800),
              child: ListView(
                controller:
                    _scrollController, // use same scrollController object to support drag functionality
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  BuzzyPage1(),
                  SizedBox(
                    height: 100,
                  ),
                  ProductCircle(),
                  SizedBox(
                    height: 100,
                  ),
                  BuzzyPage2(),
                  SizedBox(
                    height: 50,
                  ),
                  ProductCircle(),
                  BuzzyPage3(),
                  ProductCircle(),
                  SizedBox(
                    height: 100,
                  ),
                  BuzzyPage4(),
                ],
              ),
            ),
          ),
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
              left: 40,
              top: h / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pulse to Pain",
                    style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 22, color: Color(0xFF364146)),
                    ),
                  ),
                  Text(
                    "Buzzy",
                    style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 32, color: Color(0xFF364146)),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                right: 40,
                top: 40,
                child: Material(
                  child: InkWell(
                    onTap: () {
                        Navigator.push(context,
          MaterialPageRoute(builder: (context) => OrderShoppingCode()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
        ],
      ),
    );
  }
}
