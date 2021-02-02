import 'package:emorgan/common/color.dart';
import 'package:flutter/material.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import 'product_banner.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();

//  _scrollController.animateTo(.0,
//                         duration: Duration(milliseconds: 200),
//                         curve: Curves.ease);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h,
      width: w,
      child: VsScrollbar(
          controller: _scrollController,
          // @REQUIRED
          scrollDirection: null,
          allowDrag:
              true, // allows to scroll the list using scrollbar [Default : true]
          color: Colors.purple[900], // sets color of vsScrollBar
          radius: 50, // sets radius of vsScrollBar
          thickness: 8, // sets thickness of vsScrollBar
          scrollbarFadeDuration: Duration(milliseconds: 500),
          scrollbarTimeToFade: Duration(milliseconds: 800),
          child: ListView(
            children: [
              ProductBanner(
                scrollController: _scrollController,
              ),
              ProductBanner(
                scrollController: _scrollController,
              ),
              ProductBanner(
                scrollController: _scrollController,
              )
            ],
          )),
    );
  }
}
