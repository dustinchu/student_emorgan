import 'package:flutter/material.dart';
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
                  SizedBox(height: 100,),
                  BuzzyPage2(),
                  SizedBox(height: 100,),
                  BuzzyPage3(),
                  BuzzyPage4(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

