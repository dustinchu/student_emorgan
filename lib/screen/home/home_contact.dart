import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:emorgan/common/sendEmail.dart';
import 'package:emorgan/common/widgets/homeContactAnimation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContact extends StatefulWidget {
  HomeContact({Key key, this.upBtn}) : super(key: key);
  final VoidCallback upBtn;
  @override
  _HomeContactState createState() => _HomeContactState();
}

class _HomeContactState extends State<HomeContact>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  bool get wantKeepAlive => true;
  bool nameStatus = false;
  bool addressStatus = false;
  bool messageStatus = false;
  bool loading = false;
  bool loadingSizeStatus = false;
  bool start = false;
  AnimationController controller;
  Animation<double> animation;
  HomeContactAnimation containerSizeAnimation;
  AnimationController containerSizeControlle;
  TextEditingController yourNameTextEditingController;
  TextEditingController yourEmailTextEditingController;
  TextEditingController messageTextEditingController;

  @override
  void dispose() {
    super.dispose();
    containerSizeControlle.dispose();
  }

  @override
  void initState() {
    super.initState();

    //圖片旋轉動畫
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        setState(() {
          start = true;
        });
        String request = await sendEmail(
            "${yourNameTextEditingController.text}",
            "${yourEmailTextEditingController.text}",
            "${messageTextEditingController.text}");
        await Future.delayed(Duration(seconds: 2), () {
          setState(() {
            loadingSizeStatus = false;
          });
        });

        setState(() {
          loading = false;
        });

        print("結束completed");
        controller.reverse();
        containerSizeControlle.reverse();
      } else if (status == AnimationStatus.dismissed) {
        // print("dismissed");
        controller.forward();
      } else if (status == AnimationStatus.forward) {
        // print("啟動forward");
      } else if (status == AnimationStatus.reverse) {
        // print("reverse");
      }
    });

    containerSizeControlle = new AnimationController(
        duration: const Duration(milliseconds: 1300), vsync: this);
    containerSizeControlle.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        // setState(() {
        //   start = true;
        // });
        // await Future.delayed(Duration(seconds: 2), () {
        //   // print('延遲1s执行');
        //   setState(() {
        //     loading = false;
        //   });
        // });
        await Future.delayed(Duration(seconds: 1), () {
          // print('延遲1s执行');
          setState(() {
            loadingSizeStatus = true;
          });
        });
        controller.forward();
        // print("結束completed");
        // containerSizeControlle.reverse();
      } else if (status == AnimationStatus.dismissed) {
        // print("dismissed");
        containerSizeControlle.forward();
      } else if (status == AnimationStatus.forward) {
        // print("啟動forward");
      } else if (status == AnimationStatus.reverse) {
        // print("reverse");
      }
    });
    yourNameTextEditingController = TextEditingController();
    yourEmailTextEditingController = TextEditingController();
    messageTextEditingController = TextEditingController();
    yourNameTextEditingController.addListener(() {
      if (yourNameTextEditingController.text.length > 0) {
        setState(() {
          nameStatus = true;
        });
      } else {
        setState(() {
          nameStatus = false;
        });
      }
    });
    yourEmailTextEditingController.addListener(() {
      if (yourEmailTextEditingController.text.length > 0) {
        setState(() {
          addressStatus = true;
        });
      } else {
        setState(() {
          addressStatus = false;
        });
      }
    });
    messageTextEditingController.addListener(() {
      if (messageTextEditingController.text.length > 0) {
        setState(() {
          messageStatus = true;
        });
      } else {
        setState(() {
          messageStatus = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    containerSizeAnimation =
        HomeContactAnimation(containerSizeControlle, 900.0, 600.0);
    Widget edit(title, control, h, max) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: windows_width_small_size(w),
                  color: Color(0xFF424648)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Color(0xFFF3F2F8),
            height: h,
            child: TextField(
              style: TextStyle(
                fontSize: 20,
                fontFamily: "",
                height: 1,
              ),
              cursorColor: Color(0xFFC8C1EF),
              controller: control,
              keyboardType: TextInputType.multiline,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              maxLines: max,
              autofocus: true,
              decoration: InputDecoration(
                //多行上面要給個寬度
                contentPadding: EdgeInsets.only(
                    left: 10, bottom: 20, top: max > 1 ? 10 : 0),
                //去除下滑線
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      );
    }

    Widget loding() {
      return Center(
        child: Container(
          width: 885,
          height: 513,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotationTransition(
                  alignment: Alignment.center,
                  turns: animation,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/loding_icon.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Loading…",
                  style: TextStyle(color: Color(0xFF424648)),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget successful() {
      return Center(
        child: Container(
          width: 885,
          height: 513,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/successful.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 80,
                  height: 80,
                ),
                Text(
                  'Delivered :D',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: windows_width_small_size(w),
                      color: Color(0xFF424648)),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      width: w,
      height: 1500,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 50, horizontal: windowsPaddingWidthSize(100)),
            width: w,
            height: 1500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/help.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Contact us",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_medium_size(w),
                            color: Color(0xFF424648)),
                      ),
                    ),
                    Text(
                      "Tell us your Thoughts",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_large_size(w),
                            color: Color(0xFF424648)),
                      ),
                    ),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       "We are looking forward to hearing from you.\n",
                    //       style: GoogleFonts.montserrat(
                    //         textStyle: TextStyle(
                    //             fontSize: windows_width_small_size(w),
                    //             color: Color(0xFF424648)),
                    //       ),
                    //     ),
                    //     Text(
                    //       "You can tell us about your ideas, or ask us \nquestions. Any suggestions are welcome :)",
                    //       style: GoogleFonts.montserrat(
                    //         textStyle: TextStyle(
                    //             fontSize: windows_width_small_size(w),
                    //             color: Color(0xFF424648)),
                    //       ),
                    //     )
                    //   ],
                    // )
                    Text(
                      "\nWe are looking forward to hearing from you.\n",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_small_size(w),
                            color: Color(0xFF424648)),
                      ),
                    ),
                    Text(
                      "You can tell us about your ideas, or ask us \nquestions. Any suggestions are welcome :)",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: windows_width_small_size(w),
                            color: Color(0xFF424648)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 200,
                ),
                loading
                    ? AnimatedBuilder(
                        animation: containerSizeAnimation.controller,
                        builder: (BuildContext context, Widget child) {
                          return Container(
                              color: Colors.white,
                              width: containerSizeAnimation.sizeBoxWidth.value,
                              height:
                                  containerSizeAnimation.sizeBoxHeight.value,
                              child: loadingSizeStatus
                                  ? start
                                      ? successful()
                                      : loding()
                                  : Container());
                        })
                    : Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                        margin: EdgeInsets.symmetric(vertical: 50),
                        color: Colors.white,
                        width: 900,
                        height: 600,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: edit("Your Name",
                                      yourNameTextEditingController, 30, 1),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: edit("Your Email",
                                      yourEmailTextEditingController, 30, 1),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Expanded(
                              child: edit("Message",
                                  messageTextEditingController, 300, 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    if (nameStatus &&
                                        addressStatus &&
                                        messageStatus) {
                                      yourNameTextEditingController.text = "";
                                      yourEmailTextEditingController.text = "";
                                      messageTextEditingController.text = "";
                                      setState(() {
                                        loading = true;
                                        containerSizeControlle.forward();
                                        nameStatus = false;
                                        addressStatus = false;
                                        messageStatus = false;
                                      });
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: new BoxDecoration(
                                      border: new Border.all(
                                          color: nameStatus &&
                                                  addressStatus &&
                                                  messageStatus
                                              ? Color(0xFF7A82A7)
                                              : Color(0xF80364146),
                                          width: 2), // 邊色寬度
                                      color: nameStatus &&
                                              addressStatus &&
                                              messageStatus
                                          ? Color(0xFF7A82A7)
                                          : Colors.transparent, // 底色
                                      borderRadius: new BorderRadius.circular(
                                          (60)), // 圆角度
                                    ),
                                    child: Text(
                                      "Send Message",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: nameStatus &&
                                                    addressStatus &&
                                                    messageStatus
                                                ? Colors.white
                                                : Color(0x80364146),
                                            fontSize:
                                                windows_width_small_size(w)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
              ],
            ),
          ),
          Positioned(
              top: 50,
              right: 20,
              child: IconButton(
                icon: Image.asset('assets/icon_up.png'),
                onPressed: widget.upBtn,
              )),
        ],
      ),
    );
  }
}
