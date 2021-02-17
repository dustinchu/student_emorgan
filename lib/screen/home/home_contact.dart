import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:emorgan/common/sendEmail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContact extends StatefulWidget {
  HomeContact({Key key, this.upBtn}) : super(key: key);
  final VoidCallback upBtn;
  @override
  _HomeContactState createState() => _HomeContactState();
}

class _HomeContactState extends State<HomeContact>
    with AutomaticKeepAliveClientMixin {
  bool get wantKeepAlive => true;
  bool nameStatus = false;
  bool addressStatus = false;
  bool messageStatus = false;
  TextEditingController yourNameTextEditingController;
  TextEditingController yourEmailTextEditingController;
  TextEditingController messageTextEditingController;
  @override
  void initState() {
    super.initState();
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

    return Container(
      width: w,
      height: 1100,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 50, horizontal: windowsPaddingWidthSize(100)),
            width: w,
            height: 1100,
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
                Container(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
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
                        child: edit(
                            "Message", messageTextEditingController, 300, 14),
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
                                String request = await sendEmail(
                                    "${yourNameTextEditingController.text}",
                                    "${yourEmailTextEditingController.text}",
                                    "${messageTextEditingController.text}");

                                yourNameTextEditingController.text = "";
                                yourEmailTextEditingController.text = "";
                                messageTextEditingController.text = "";
                                setState(() {
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
                                color:
                                    nameStatus && addressStatus && messageStatus
                                        ? Color(0xFF7A82A7)
                                        : Colors.transparent, // 底色
                                borderRadius:
                                    new BorderRadius.circular((60)), // 圆角度
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
                                      fontSize: windows_width_small_size(w)),
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
              top: 20,
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
