import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
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
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    TextEditingController yourNameTextEditingController;
    TextEditingController yourEmailTextEditingController;
    TextEditingController messageTextEditingController;
    @override
    void initState() {
      super.initState();
      yourNameTextEditingController = TextEditingController();
      yourEmailTextEditingController = TextEditingController();
      messageTextEditingController = TextEditingController();
    }

    Widget edit(title, control, h) {
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
              cursorColor: Color(0xFFC8C1EF),
              controller: control,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    left: 10,
                    bottom: 20, // HERE THE IMPORTANT PART
                  )),
            ),
          ),
        ],
      );
    }

    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: 50, horizontal: windowsPaddingWidthSize(100)),
          width: w,
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
                mainAxisAlignment: MainAxisAlignment.start,
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
              SizedBox(width: 200,),
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
                          child: edit(
                              "Your Name", yourNameTextEditingController, 30),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: edit(
                              "Your Email", yourNameTextEditingController, 30),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child:
                          edit("Message", yourNameTextEditingController, 300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: new BoxDecoration(
                            border: new Border.all(
                                color: Color(0xFF364146), width: 4), // 邊色寬度
                            color: Colors.transparent, // 底色
                            borderRadius:
                                new BorderRadius.circular((60)), // 圆角度
                          ),
                          child: Text(
                            "Send Message",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xFF364146),
                                  fontSize: windows_width_small_size(w)),
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
    );
  }
}
