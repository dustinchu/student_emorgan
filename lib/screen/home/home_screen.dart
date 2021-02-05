import 'package:emorgan/screen/buy/buy_loding.dart';
import 'package:emorgan/screen/buzzy_product/buzzy_product_screen.dart';
import 'package:emorgan/screen/obi_product/obi_product_screen.dart';
import 'package:emorgan/screen/shali_product/shali_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';
import 'home_about.dart';
import 'home_booking.dart';
import 'home_contact.dart';
import 'home_feedback.dart';
import 'home_help.dart';
import 'home_image_play.dart';
import 'home_menu.dart';
import 'home_product_banner.dart';

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
    void shaliLearn() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ShaliProductScreen()));
    }

    void obiLearn() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ObiProductScreen()));
    }

    void buzzyLearn() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => BuzzyProductScreen()));
    }

    void moreNBtn() {}
    void nowBtn() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Buyloding()));
    }

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
                  // _controller.value.initialized
                  //     ? AspectRatio(
                  //         aspectRatio: _controller.value.aspectRatio,
                  //         child: VideoPlayer(_controller),
                  //       )
                  //     : Container(),
                  // Container(
                  //     width: 500,
                  //     height: 500,
                  //     child: HomeProductHtml(
                  //       id: "shali",
                  //       path: "assets/shali/shali.145.html",
                  //     )),
                  // HomeProductHtml(
                  //   id: "obi",
                  //   path: "assets/obi/obi.150.html",
                  // ),
                  new HomeProductBanner(
                    id: "shali",
                    upBtn: upBtn,
                    nowBtn: nowBtn,
                    moreBtn: shaliLearn,
                    title: "Tear to Taste",
                    title2: "SHALI",
                    body1: "Human A wears a tear patch",
                    body2: "Human B wears taste salivary",
                    isLeft: true,
                    finderName: 'buzzy',
                  ),
                  new HomeProductBanner(
                    id: "obi",
                    upBtn: upBtn,
                    moreBtn: obiLearn,
                    title: "Voice to Vibrate",
                    title2: "OBI",
                    body1: "Human A wears a voice patch",
                    body2: "Human B wears a tactile heart",
                    isLeft: false,
                    finderName: "buzzy",
                  ),
                  new HomeProductBanner(
                    id: "buzzy",
                    upBtn: upBtn,
                    moreBtn: buzzyLearn,
                    title: "Pulse to Pain",
                    title2: "BUZZY",
                    body1: "Human A&B both wear patches with",
                    body2: "pulse detection and low freqency electric shock",
                    isLeft: true,
                    finderName: "buzzy",
                  ),
                  HomeHelp(),
                  HomeBooking(),
                  HomeImagePlay(),
                  HomeFeedback(),
                  HomeContact(),
                  HomeAbout(),
                ],
              ),
            ),
          ),
          Positioned(
            width: 400,
            height: 300,
            left: 18.0,
            top: h / 2,
            child: HomeMenu(),
          ),
        ],
      ),
    );
  }
}
