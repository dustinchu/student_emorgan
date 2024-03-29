import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHelp extends StatefulWidget {
  HomeHelp({Key key, this.upBtn}) : super(key: key);
  final VoidCallback upBtn;
  @override
  _HomeHelpState createState() => _HomeHelpState();
}

class _HomeHelpState extends State<HomeHelp>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    double h = 1500;
    List<Widget> stepList = [
      step("Step 1.", "assets/step1.png", "Book a counseling", "Online", "",
          w),
      step("Step 2.", "assets/step2.png", "Get the consent and",
          "emorgan-purchase code", "from the psychologist", w),
      step("Step 3.", "assets/step3.png", "Purchase Obi, Shali or",
          "Buzzy online", "", w),
      step("Step 4.", "assets/step4.png", "Put on your Obi, Shali or", "Buzzy",
          "", w),
      step("Step 5.", "assets/step5.png", "Exchange of emotion",
          "experience with your", "partner", w),
      step("Step 6.", "assets/step6.png", "Go back for a",
          "follow-up consultation", "", w),
      step("Step 7.", "assets/step7.png", "Keep your relationship ", "", "", w),
    ];

    return Container(
      width: w,
      height: h,
      padding: EdgeInsets.only(top:200),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/help.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 50,
            right: 22,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Image.asset('assets/icon_up.png'),
                  onPressed: widget.upBtn,
                  // onPressed: () => widget.scrollController.animateTo(.0,
                  //     duration: Duration(milliseconds: 200),
                  //     curve: Curves.ease),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 650,
                // padding: EdgeInsets.only(top: 100, bottom: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        stepList[0],
                        stepList[1],
                        stepList[2],
                        stepList[3],
                        stepList[4],
                        stepList[5],
                      ],
                    ),
                  ],
                ),
              ),
              helpText(w, h),
            ],
          ),

          // Column(
          //   children: [
          //     Expanded(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               stepList[0],
          //               stepList[1],
          //               stepList[2],
          //               stepList[3],
          //             ],
          //           ),
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               stepList[4],
          //               stepList[5],
          //               stepList[6],
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),
          //     helpText(w, h),
          //     // Expanded(child:helpText(w,h))
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget step(String title, String imgPath, String body, String body1,
      String body2, w) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: windows_width_medium_size(w),
              color: Color(0xFF424648),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
          width: 120,
          height: 120,
        ),
        Text(
          body,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: windows_width_small_size(w),
              color: Color(0xFF424648),
            ),
          ),
        ),
        Text(
          body1,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: windows_width_small_size(w),
              color: Color(0xFF424648),
            ),
          ),
        ),
        Text(
          body2,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: windows_width_small_size(w),
              color: Color(0xFF424648),
            ),
          ),
        ),
      
      ],
    );
  }

  Widget helpText(w, h) {
    return Expanded(
      child: Container(
        // padding: EdgeInsets.only(top: 122.3, bottom: 122.3),
        // padding: EdgeInsets.symmetric(
        //     vertical: windowsSizeboxHightSize(50), horizontal: 150),
        width: w,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Container(
              padding: EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Purchase Process",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: windows_width_medium_size(w),
                          color: Color(0xFF364146)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Know Your Needs First",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: windows_width_large_size(w),
                          color: Color(0xFF364146)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Container(
              padding: EdgeInsets.only(top: 150),
              child: Text(
                '''We understand that when you come to this website, you want a better solution. There might
be some problems with you and your partner.

You have tried many methods, but they were not satisfied.

We suggest that you and your partner talk to our psychological counselors first, they will
help you with relationship and emotion problems, and  also make a serious decision
whether you need emorgans and help you grow in understanding each other.
                  ''',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: windows_width_small_size(w),
                      color: Color(0xFF364146)),
                ),
                // "We understand that when you come to this website, you want a better solution. There might ",
              ),
            ),

            // Text(
            //   "be some problems with you and your partner. ",
            //   style: TextStyle(fontSize:  windows_width_small_size(w), color: Color(0xFF364146)),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            // Text(
            //   "You have tried many methods, but they were not satisfied.",
            //   style: TextStyle(fontSize:  windows_width_small_size(w), color: Color(0xFF364146)),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            // Text(
            //   "We suggest that you and your partner can talk to our psychological counselors first, they will \nhelp you with relationship and emotion problems, and  also make a serious decision \nwhether you need emorgans and help you grow in understanding each other.",
            //   style: TextStyle(fontSize:  windows_width_small_size(w), color: Color(0xFF364146)),
            // ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
