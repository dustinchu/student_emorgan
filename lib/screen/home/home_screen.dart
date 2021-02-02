import 'package:flutter/material.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import 'home_menu.dart';
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
  void upBtn() {
    _scrollController.animateTo(.0,
        duration: Duration(milliseconds: 200), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Stack(
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
                ProductBanner(
                  upBtn: upBtn,
                  title: "Tear to Taste",
                  title2: "SHALI",
                  body1: "Human A wears a tear patch",
                  body2: "Human B wears taste salivary",
                  isLeft: true,
                ),
                ProductBanner(
                  upBtn: upBtn,
                  title: "Voice to Vibrate",
                  title2: "OBI",
                  body1: "Human A wears a voice patch",
                  body2: "Human B wears a tactile heart",
                  isLeft: false,
                ),
                ProductBanner(
                  upBtn: upBtn,
                  title: "Pulse to Pain",
                  title2: "BUZZY",
                  body1: "Human A&B both wear patches with",
                  body2: "pulse detection and low freqency electric shock",
                  isLeft: true,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          width: 200,
          height: 300,
          left: 18.0,
          top: h / 2,
          child: HomeMenu(),
        ),
      ],
    );
  }
}
