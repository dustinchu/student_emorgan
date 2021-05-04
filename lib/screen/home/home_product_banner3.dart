import 'package:easy_web_view/easy_web_view.dart';
import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:emorgan/provider/book_state.dart';
import 'package:emorgan/screen/home/home_product_360html.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';

import 'home_product_Image.dart';

class HomeProductBanner3 extends StatefulWidget {
  HomeProductBanner3(
      {Key key,
      this.status,
      this.id,
      this.upBtn,
      this.moreBtn,
      this.nowBtn,
      this.title,
      this.title2,
      this.body1,
      this.body2,
      this.finderName,
      this.path,
      this.imgWidth,
      this.imgHeigh,
      this.isLeft,
      this.isTop})
      : super(key: key);
  final VoidCallback upBtn;
  final String title;
  final String title2;
  final String body1;
  final String body2;
  final bool isLeft;
  final VoidCallback moreBtn;
  final VoidCallback nowBtn;
  final String finderName;
  final String path;
  final double imgWidth;
  final double imgHeigh;
  final String id;
  final bool isTop;
  final bool status;
  @override
  _HomeProductBanner3State createState() => _HomeProductBanner3State();
}

bool learnStatus = false;
bool orderStatus = false;

class _HomeProductBanner3State extends State<HomeProductBanner3>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    double h = 1500;
    return Stack(
      children: [
        
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: widget.isLeft
                  ? AssetImage("assets/backround_right.png")
                  : AssetImage("assets/backround_left.png"),
              fit: BoxFit.cover,
            ),
          ),
          height: h,
          width: w,
          child: Container(
            padding: widget.isLeft
                ? EdgeInsets.only(left: w / 3)
                : EdgeInsets.only(right: w / 3),
            child: Container(
              margin: widget.isTop
                  ? EdgeInsets.only(top: 300)
                  : EdgeInsets.only(top: 0),
              child: Center(
                  child: widget.status
                      ? Align(
                          alignment: Alignment.center,
                          child: EasyWebView(
                            onLoaded: () {
                              // print("onload~");
                            },
                            src: widget.path,
                            isHtml: false, // Use Html syntax
                            isMarkdown: false, // Use markdown syntax
                            convertToWidgets:
                                false, // Try to convert to flutter widgets
                            width: widget.imgWidth,
                            height: widget.imgHeigh,
                          ),
                        )
                      : Container()
                  // : FlatButton(
                  //     onPressed: () {
                  //       Provider.of<BookStatus>(context, listen: false)
                  //           .setImageStatus(true);
                  //     },
                  //     child: Text("play")),
                  // child: HomeProduct360Html(
                  //     valueID: widget.finderName, path: widget.path),
                  // child: ImagePage(
                  //   w: widget.imgWidth,
                  //   h: widget.imgHeigh,
                  //   finderName: widget.finderName,
                  // ),
                  ),
            ),
          ),
        ),
        // backround(w, h),
Container(
  alignment: Alignment.bottomCenter,
          height: 200,
          width: w,
          margin: EdgeInsets.only(top: 1100),
          padding: widget.isLeft
              ? EdgeInsets.only( left: w / 3)
              : EdgeInsets.only( right: w / 3),
          child: widget.status
              ? Align(
                  alignment: Alignment.topCenter,
                  child: Container(


                    width: 209,
                    height: 44.06,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/html_3dview_icon.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              : Container(),
        ),
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: Positioned(
        //     bottom: 200,
        //     child: Container(
        //       decoration: BoxDecoration(
        //         image: DecorationImage(
        //           image: AssetImage("assets/html_3dview_icon.png"),
        //           fit: BoxFit.fitHeight,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        widget.isLeft
            ? Positioned(
                bottom: 0.0,
                left: 0.0,
                child: InnerLayout(
                  moreBtn: widget.moreBtn,
                  nowBtn: widget.nowBtn,
                  title: widget.title,
                  title2: widget.title2,
                  body1: widget.body1,
                  body2: widget.body2,
                  upBtn: widget.upBtn,
                ))
            : Positioned(
                bottom: 0.0,
                right: 0.0,
                child: InnerLayout(
                  moreBtn: widget.moreBtn,
                  nowBtn: widget.nowBtn,
                  title: widget.title,
                  title2: widget.title2,
                  body1: widget.body1,
                  body2: widget.body2,
                  upBtn: widget.upBtn,
                )),

        Positioned(
            top: 50,
            right: 20,
            child: PointerInterceptor(
              child: IconButton(
                icon: Image.asset('assets/icon_up.png'),
                onPressed: widget.upBtn,
              ),
            )),
      ],
    );
  }
}

class InnerLayout extends StatefulWidget {
  const InnerLayout(
      {Key key,
      this.id,
      this.upBtn,
      this.moreBtn,
      this.nowBtn,
      this.title,
      this.title2,
      this.body1,
      this.body2,
      this.finderName,
      this.isLeft})
      : super(key: key);
  final VoidCallback upBtn;
  final String title;
  final String title2;
  final String body1;
  final String body2;
  final bool isLeft;
  final VoidCallback moreBtn;
  final VoidCallback nowBtn;
  final String finderName;
  final String id;

  @override
  _InnerLayoutState createState() => _InnerLayoutState();
}

class _InnerLayoutState extends State<InnerLayout> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    double h = 1500;
    return Container(
      child: Container(
        padding: EdgeInsets.only(left: 26, right: 26, bottom: 50),
        width: w / 3,
        height: h,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     IconButton(
            //       icon: Image.asset('assets/icon_up.png'),
            //       onPressed: widget.upBtn,
            //       // onPressed: () => widget.scrollController.animateTo(.0,
            //       //     duration: Duration(milliseconds: 200),
            //       //     curve: Curves.ease),
            //     )
            //   ],
            // ),
            SizedBox(
              width: 440,
              height: 362,
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 41,
                      ),
                      Text(
                        widget.title,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: windows_width_medium_size(w),
                              color: Color(0xFF364146)),
                        ),
                      ),
                      Text(
                        widget.title2,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: windows_width_large_size(w),
                              color: Color(0xFF364146)),
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Text(
                        widget.body1,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: windows_width_small_size(w),
                              color: Color(0xFF364146)),
                        ),
                      ),
                      Text(
                        widget.body2,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: windows_width_small_size(w),
                              color: Color(0xFF364146)),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: widget.moreBtn,
                              onHover: (value) {
                                print(value);
                                setState(() {
                                  learnStatus = value;
                                });
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          " Learn more",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              fontSize:
                                                  windows_width_small_size(w),
                                              color: Color(0xFF364146),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_outlined,
                                          color: Color(0xFF7A82A7),
                                          size: windows_width_medium_size(w),
                                        )
                                      ],
                                    ),
                                    learnStatus
                                        ? Container(
                                            // padding: EdgeInsets.only(right: 30),
                                            width:
                                                windows_width_small_size(w) * 6,
                                            height: 3,
                                            color: Color(0xFF7A82A7),
                                          )
                                        : Container(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: windowsSizeboxWidthSize(20),
                          ),
                          Material(
                            child: InkWell(
                              onTap: widget.nowBtn,
                              onHover: (value) {
                                setState(() {
                                  orderStatus = value;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: new BoxDecoration(
                                  border: new Border.all(
                                      color: Color(0xFF7A82A7),
                                      width: 4), // 邊色寬度
                                  color: orderStatus
                                      ? Color(0xFF7A82A7)
                                      : Colors.transparent, // 底色
                                  borderRadius:
                                      new BorderRadius.circular((60)), // 圆角度
                                ),
                                child: Text(
                                  "ORDER NOW",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize:
                                            windows_width_small_size(w) - 1,
                                        color: Color(0xFF364146)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
