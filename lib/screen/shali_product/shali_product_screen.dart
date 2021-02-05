import 'package:flutter/material.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import 'shail_page3.dart';
import 'shail_page4.dart';
import 'shail_page5.dart';
import 'shali_page1.dart';
import 'shali_page2.dart';

class ShaliProductScreen extends StatefulWidget {
  ShaliProductScreen({Key key}) : super(key: key);

  @override
  _ShaliProductScreenState createState() => _ShaliProductScreenState();
}

class _ShaliProductScreenState extends State<ShaliProductScreen> {
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
                  ShaliPage1(),
                  ShaliPage2(),
                  ShaliPage3(),
                  ShaliPage4(),
                  ShaliPage5(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
