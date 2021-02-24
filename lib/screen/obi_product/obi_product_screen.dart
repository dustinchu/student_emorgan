import 'package:emorgan/common/widgets/product_circle.dart';
import 'package:flutter/material.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import 'obi_page1.dart';
import 'obi_page2.dart';
import 'obi_page3.dart';
import 'obi_page4.dart';
import 'obi_page5.dart';

class ObiProductScreen extends StatefulWidget {
  ObiProductScreen({Key key}) : super(key: key);

  @override
  _ObiProductScreenState createState() => _ObiProductScreenState();
}

class _ObiProductScreenState extends State<ObiProductScreen> {
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
                  ObiPage1(),
                  SizedBox(
                    height: 200,
                  ),
                  ProductCircle(),
                  ObiPage2(),
                  SizedBox(
                    height: 200,
                  ),
                  ProductCircle(),
                     SizedBox(
                    height: 100,
                  ),
                  ObiPage3(),
                     SizedBox(
                    height: 100,
                  ),
                  ProductCircle(),
                  ObiPage4(),
                  ProductCircle(),
                     SizedBox(
                    height: 100,
                  ),
                  ObiPage5(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
