import 'package:emorgan/provider/banner.dart';
import 'package:emorgan/provider/book_state.dart';
import 'package:emorgan/screen/buy/buy_loding.dart';
import 'package:emorgan/screen/buzzy_product/buzzy_product_screen.dart';
import 'package:emorgan/screen/home/home_vidio.dart';
import 'package:emorgan/screen/obi_product/obi_product_screen.dart';
import 'package:emorgan/screen/order/order_shopping_code.dart';
import 'package:emorgan/screen/shali_product/shali_product_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';
import 'home_about.dart';
import 'home_big_banner.dart';
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

  @override
  void initState() {
    super.initState();
    //监听滚动事件，打印滚动位置
    _scrollController.addListener(() {
      // Provider.of<BookStatus>(context, listen: false).setImageStatus(false);
      //打印滚动位置
      // print(_scrollController.offset);
      // upBtn();
    });
  }

  int pageIndex = 0;
  double pageAnimate = 0;
  bool scrollStatus = true;
  void scrollPageNext() {
    pageIndex += 1;
    pageAnimate += 900;

    // print("index: $pageIndex   animate:$pageAnimate");
    _scrollController.animateTo(pageAnimate,
        duration: Duration(seconds: 1), curve: Curves.ease);
  }

  void scrollPageBack() {
    pageIndex -= 1;
    pageAnimate -= 900;
    // print("index: $pageIndex   animate:$pageAnimate");
    _scrollController.animateTo(pageAnimate,
        duration: Duration(seconds: 1), curve: Curves.ease);
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _scrollController.dispose();
    super.dispose();
  }

  void upBtn() {
    _scrollController.animateTo(0,
        duration: Duration(milliseconds: 200), curve: Curves.ease);
    pageIndex = 0;
    pageAnimate = 0;
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
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => OrderShoppingCode()));
    }

    void menuEmorgan() {
      _scrollController.animateTo(.0,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    }

    void menuProducts() {}
    void menuPurchase() {
      _scrollController.animateTo(2698,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    }

    void menuBook() {
      _scrollController.animateTo(3600,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    }

    void menuUser() {
      _scrollController.animateTo(4873,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    }

    void menuContact() {
      _scrollController.animateTo(5254,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    }

    void menuAbout() {
      _scrollController.animateTo(6125,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    }

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var bannerStatus = Provider.of<BannerStatus>(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: h,
            width: w,
            child: Listener(
              // onPointerUp: (details) {
              //   // upBtn();
              //   print("up");
              // },
              onPointerSignal: (pointerSignal) async {
                if (scrollStatus) {
                  if (pointerSignal is PointerScrollEvent) {
                    scrollStatus = false;
                    // print("d:${pointerSignal.scrollDelta}");
                    // print("Y:${pointerSignal.scrollDelta.dy}");

                    if (pointerSignal.scrollDelta.dy > 0 &&
                        pageAnimate != 8100) {
                      scrollPageNext();
                    }
                    if (pointerSignal.scrollDelta.dy < 0 && pageAnimate != 0) {
                      scrollPageBack();
                    }
                    //延遲兩秒
                    await Future.delayed(Duration(milliseconds: 1500));
                    if (pageIndex == 2)
                      Provider.of<BannerStatus>(context, listen: false)
                          .showBanner1();
                    else if (pageIndex == 3)
                      Provider.of<BannerStatus>(context, listen: false)
                          .showBanner2();
                    else if (pageIndex == 4)
                      Provider.of<BannerStatus>(context, listen: false)
                          .showBanner3();
                    scrollStatus = true;
                  }
                }
              },
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
                  //避免listview下拉 往回時 會重新渲染 參考 https://stackoverflow.com/questions/57980225/flutter-issue-listview-rebuilding-items-when-scrolled
                  addAutomaticKeepAlives: true,
                  controller:
                      _scrollController, // use same scrollController object to support drag functionality
                  shrinkWrap: true,
                  //關閉滾動
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // HomeVidio(),
                    // HomeBigBanner(
                    //   upBtn: upBtn,
                    // ),
                    // new HomeProductBanner(
                    //   id: "shali",
                    //   upBtn: upBtn,
                    //   nowBtn: nowBtn,
                    //   moreBtn: shaliLearn,
                    //   title: "Tear to Taste",
                    //   title2: "SHALI",
                    //   body1: "Human A wears a tear patch",
                    //   body2: "Human B wears taste salivary",
                    //   isLeft: true,
                    //   finderName: 'shali',
                    //   path: "https://eloquent-engelbart-9e449d.netlify.app",
                    //   // path: "assets/shali145.html",
                    //   status: bannerStatus.getBanner1Status,
                    //   imgWidth: 768,
                    //   imgHeigh: 717,
                    // ),
                    // new HomeProductBanner(
                    //   id: "obi",
                    //   upBtn: upBtn,
                    //   nowBtn: nowBtn,
                    //   moreBtn: obiLearn,
                    //   title: "Voice to Vibrate",
                    //   title2: "OBI",
                    //   body1: "Human A wears a voice patch",
                    //   body2: "Human B wears a tactile heart",
                    //   isLeft: false,
                    //   finderName: "obi",
                    //   // path: "assets/obi150.html",
                    //   path: "https://obi1.netlify.app/",
                    //   status: bannerStatus.getBanner2Status,
                    //   imgWidth: 1024,
                    //   imgHeigh: 668,
                    // ),
                    // new HomeProductBanner(
                    //   id: "buzzy",
                    //   upBtn: upBtn,
                    //   nowBtn: nowBtn,
                    //   moreBtn: buzzyLearn,
                    //   title: "Pulse to Pain",
                    //   title2: "BUZZY",
                    //   body1: "Human A&B both wear patches with",
                    //   body2: "pulse detection and low freqency electric shock",
                    //   isLeft: true,
                    //   finderName: "buzzy",
                    //   // path: "assets/buzzy151.html",
                    //   path: "https://buzzy1.netlify.app",
                    //   status: bannerStatus.getBanner3Status,
                    //   imgWidth: 1024,
                    //   imgHeigh: 795,
                    // ),
                    // HomeHelp(upBtn: upBtn),
                    HomeBooking(
                      upBtn: upBtn,
                    ),
                    // HomeImagePlay(),
                    // HomeFeedback(
                    //   upBtn: upBtn,
                    // ),
                    // HomeContact(
                    //   upBtn: upBtn,
                    // ),
                    // HomeAbout(
                    //   upBtn: upBtn,
                    // ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              width: 400,
              height: 300,
              left: 18.0,
              top: h / 2,
              child: HomeMenu(
                emorgan: menuEmorgan,
                products: menuProducts,
                purchase: menuPurchase,
                book: menuBook,
                user: menuUser,
                contact: menuContact,
                about: menuAbout,
              )),
        ],
      ),
    );
  }
}
