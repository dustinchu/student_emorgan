import 'package:emorgan/common/widgets/key.dart';
import 'package:emorgan/provider/banner.dart';
import 'package:emorgan/provider/book_state.dart';
import 'package:emorgan/provider/menu.dart';
import 'package:emorgan/screen/buy/buy_loding.dart';
import 'package:emorgan/screen/buzzy_product/buzzy_product_screen.dart';
import 'package:emorgan/screen/home/home_vidio.dart';
import 'package:emorgan/screen/home/video_items.dart';
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
  static const String route = '/';
  HomeScreen({Key key, @required this.pageAnimate, @required this.pageIndex})
      : super(key: key);

  int pageIndex;
  double pageAnimate;
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

    var widgetsBinding = WidgetsBinding.instance;
    widgetsBinding.addPostFrameCallback((callback) {
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(seconds: 1), curve: Curves.ease);
      Provider.of<MenuStatus>(context, listen: false)
          .setPageIndex(widget.pageIndex);
    });
  }

  // int pageIndex = 0;
  // double pageAnimate = 0;
  bool scrollStatus = true;
  void scrollPageNext(h) {
    if (widget.pageIndex < 9) {
      // print("pageindex ===${widget.pageIndex}");
      if (widget.pageIndex <= 0) {
        if (h < 1500) {
          widget.pageAnimate += 1500 + ((1500 - h) / 2);
        } else
          widget.pageAnimate += 1500 + ((h - 1500) / 2);
      } else
        widget.pageAnimate += 1500;
      setState(() {
        widget.pageIndex += 1;
      });

      // print("next index ==$widget.pageIndex   animate==$widget.pageAnimate");
      // pageAnimate += 1300;
      // else
      // pageAnimate += 1700;

      // print("index: $pageIndex   animate:$pageAnimate");
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(seconds: 1), curve: Curves.ease);

      Provider.of<MenuStatus>(context, listen: false)
          .setPageIndex(widget.pageIndex);
    }
  }

  void scrollPageBack(h) {
    setState(() {
      widget.pageIndex -= 1;
      if (widget.pageIndex == 0) {
        widget.pageAnimate = 0;
        widget.pageIndex = 0;
      } else {
        widget.pageAnimate -= 1500;
      }
    });

    // print("back index ==$widget.pageIndex   animate==$widget.pageAnimate");
    // pageAnimate -= 1700;
    // print("index: $pageIndex   animate:$pageAnimate");
    _scrollController.animateTo(widget.pageAnimate,
        duration: Duration(seconds: 1), curve: Curves.ease);

    Provider.of<MenuStatus>(context, listen: false)
        .setPageIndex(widget.pageIndex);
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
    widget.pageIndex = 0;
    widget.pageAnimate = 0;
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    double returnMoveHeight(index) {
      double moveHeight = 0;
      if (h < 1500) {
        moveHeight += 1500 + ((1500 - h) / 2);
      } else
        moveHeight += 1500 + ((h - 1500) / 2);

      if (index > 1) {
        moveHeight += 1500 * (index - 1);
      }

      return moveHeight;
    }

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
      // Navigator.of(context).pushNamed(OrderShoppingCode.route);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => OrderShoppingCode()));
    }

    void menuEmorgan() {
      widget.pageAnimate = returnMoveHeight(1);
      // pageAnimate += 1500 + ((1500 - h) / 2);
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      widget.pageIndex = 1;
      Provider.of<MenuStatus>(context, listen: false)
          .setPageIndex(widget.pageIndex);
    }

    void menuProducts() {
      widget.pageAnimate = returnMoveHeight(2);
      // pageAnimate = 3000 + ((h - 1500) / 2);
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      widget.pageIndex = 2;
      Provider.of<MenuStatus>(context, listen: false)
          .setPageIndex(widget.pageIndex);
    }

    void menuPurchase() {
      widget.pageAnimate = returnMoveHeight(5);
      // pageAnimate = 7500 + ((h - 1500) / 2);
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      widget.pageIndex = 5;
      Provider.of<MenuStatus>(context, listen: false).setPageIndex(5);
    }

    void menuBook() {
      widget.pageAnimate = returnMoveHeight(6);
      // pageAnimate = 9000 + ((h - 1500) / 2);
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      widget.pageIndex = 6;
      Provider.of<MenuStatus>(context, listen: false)
          .setPageIndex(widget.pageIndex);
    }

    void menuUser() {
      // pageAnimate = 10500 + ((h - 1500) / 2);
      widget.pageAnimate = returnMoveHeight(7);
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      widget.pageIndex = 7;
      Provider.of<MenuStatus>(context, listen: false)
          .setPageIndex(widget.pageIndex);
    }

    void menuContact() {
      // pageAnimate = 12000 + ((h - 1500) / 2);
      widget.pageAnimate = returnMoveHeight(8);
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      widget.pageIndex = 8;
      Provider.of<MenuStatus>(context, listen: false)
          .setPageIndex(widget.pageIndex);
    }

    void menuAbout() {
      // pageAnimate = 13500 + ((h - 1500) / 2);
      widget.pageAnimate = returnMoveHeight(9);
      _scrollController.animateTo(widget.pageAnimate,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      widget.pageIndex = 9;
      Provider.of<MenuStatus>(context, listen: false)
          .setPageIndex(widget.pageIndex);
    }

    void emoNextPage() {
      scrollPageNext(h);
    }

    var bannerStatus = Provider.of<BannerStatus>(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: w,
            child: Listener(
              onPointerSignal: (pointerSignal) async {
                if (scrollStatus) {
                  if (pointerSignal is PointerScrollEvent) {
                    scrollStatus = false;
                    // print("d:${pointerSignal.scrollDelta}");
                    // print("Y:${pointerSignal.scrollDelta.dy}");

                    if (pointerSignal.scrollDelta.dy > 0 &&
                        widget.pageAnimate != 14300) {
                      scrollPageNext(h);
                    }
                    if (pointerSignal.scrollDelta.dy < 0 &&
                        widget.pageAnimate != 0) {
                      scrollPageBack(h);
                    }
                    //延遲兩秒
                    await Future.delayed(Duration(milliseconds: 1500));
                    if (widget.pageIndex == 2)
                      Provider.of<BannerStatus>(context, listen: false)
                          .showBanner1();
                    else if (widget.pageIndex == 3)
                      Provider.of<BannerStatus>(context, listen: false)
                          .showBanner2();
                    else if (widget.pageIndex == 4)
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
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(
                    //避免listview下拉 往回時 會重新渲染 參考 https://stackoverflow.com/questions/57980225/flutter-issue-listview-rebuilding-items-when-scrolled
                    addAutomaticKeepAlives: true,
                    controller:
                        _scrollController, // use same scrollController object to support drag functionality
                    shrinkWrap: true,
                    //關閉滾動
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        children: [
                          HomeVidio(
                            emoNextPage: emoNextPage,
                          ),
                          HomeBigBanner(
                            upBtn: upBtn,
                          ),
                          new HomeProductBanner(
                            vKey: VKey.key1,
                            id: "shali",
                            upBtn: upBtn,
                            nowBtn: nowBtn,
                            moreBtn: shaliLearn,
                            title: "Tear to Taste",
                            title2: "SHALI",
                            body1: "Human A wears a tear patch",
                            body2: "Human B wears taste salivary",
                            isLeft: true,
                            finderName: 'shali',
                            path:
                                "https://eloquent-engelbart-9e449d.netlify.app",
                            // path: "assets/shali145.html",
                            status: bannerStatus.getBanner1Status,
                            imgWidth: 1000,
                            imgHeigh: 1000,
                            isTop: false,
                          ),
                          new HomeProductBanner(
                            vKey: VKey.key2,
                            id: "obi",
                            upBtn: upBtn,
                            nowBtn: nowBtn,
                            moreBtn: obiLearn,
                            title: "Voice to Vibrate",
                            title2: "OBI",
                            body1: "Human A wears a voice patch",
                            body2: "Human B wears a tactile heart",
                            isLeft: false,
                            finderName: "obi",
                            // path: "assets/obi150.html",
                            path: "https://obi1.netlify.app/",
                            status: bannerStatus.getBanner2Status,
                            imgWidth: 1300,
                            imgHeigh: 1300,
                            isTop: true,
                          ),
                          new HomeProductBanner(
                            vKey: VKey.key3,
                            id: "buzzy",
                            upBtn: upBtn,
                            nowBtn: nowBtn,
                            moreBtn: buzzyLearn,
                            title: "Pulse to Pain",
                            title2: "BUZZY",
                            body1: "Human A&B both wear patches with",
                            body2:
                                "pulse detection and low freqency electric shock",
                            isLeft: true,
                            finderName: "buzzy",
                            // path: "assets/buzzy151.html",
                            path: "https://buzzy1.netlify.app",
                            status: bannerStatus.getBanner3Status,
                            imgWidth: 1200,
                            imgHeigh: 1200,
                            isTop: false,
                          ),
                          HomeHelp(upBtn: upBtn),
                          HomeBooking(
                            upBtn: upBtn,
                          ),
                          HomeImagePlay(),
                          HomeFeedback(
                            upBtn: upBtn,
                          ),
                          HomeContact(
                            upBtn: upBtn,
                          ),
                          HomeAbout(
                            upBtn: upBtn,
                          ),
                          // Container(
                          //   width: MediaQuery.of(context).size.width,
                          //   height: 300,
                          //   decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //       image: AssetImage("assets/help.png"),
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // )
                        ],
                      ),

                      // HomeAbout(
                      //   upBtn: upBtn,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          widget.pageIndex > 0
              ? Positioned(
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
                  ))
              : Container(),
        ],
      ),
    );
  }
}
