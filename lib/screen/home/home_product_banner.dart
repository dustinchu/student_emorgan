import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:flutter/material.dart';

class HomeProductBanner extends StatefulWidget {
  HomeProductBanner(
      {Key key,
      this.upBtn,
      this.title,
      this.title2,
      this.body1,
      this.body2,
      this.isLeft})
      : super(key: key);
  final VoidCallback upBtn;
  final String title;
  final String title2;
  final String body1;
  final String body2;
  final bool isLeft;
  @override
  _HomeProductBannerState createState() => _HomeProductBannerState();
}

bool learnStatus = false;
bool orderStatus = false;

class _HomeProductBannerState extends State<HomeProductBanner> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    @override
    void initState() {
      super.initState();
    }

    return Stack(
      children: [
        backround(w, h),
        widget.isLeft
            ? Positioned(bottom: 0.0, left: 0.0, child: innerLayout(w, h))
            : Positioned(bottom: 0.0, right: 0.0, child: innerLayout(w, h)),
      ],
    );
  }

  Widget innerLayout(w, h) {
    return Container(
      padding: EdgeInsets.only(left: 26, top: 22, right: 26, bottom: 50),
      width: w / 3,
      height: h,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
          SizedBox(
            height: 41,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: windows_width_medium_size(w), color: Color(0xFF364146)),
          ),
          Text(
            widget.title2,
            style: TextStyle(fontSize:  windows_width_large_size(w), color: Color(0xFF364146)),
          ),
          SizedBox(
            height: 36,
          ),
          Text(
            widget.body1,
            style: TextStyle(fontSize:  windows_width_small_size(w), color: Color(0xFF364146)),
          ),
          Text(
            widget.body2,
            style: TextStyle(fontSize:  windows_width_small_size(w), color: Color(0xFF364146)),
          ),
          Expanded(child: Container()),
          bottomBtn(w)
        ],
      ),
    );
  }

  Widget bottomBtn(w) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        " Learn more",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:  windows_width_small_size(w),
                          color: Color(0xFF364146),
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
                          width:  windows_width_small_size(w)*6,
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
            onTap: () {},
            onHover: (value) {
              print(value);
              setState(() {
                orderStatus = value;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: new BoxDecoration(
                border:
                    new Border.all(color: Color(0xFF7A82A7), width: 4), // 邊色寬度
                color:
                    orderStatus ? Color(0xFF7A82A7) : Colors.transparent, // 底色
                borderRadius: new BorderRadius.circular((60)), // 圆角度
              ),
              child: Text("ORDER NOW",style: TextStyle(fontSize:  windows_width_small_size(w)-1,color: Color(0xFF364146)),),
            ),
          ),
        )
      ],
    );
  }

  Widget backround(w, h) {
    return Container(
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
      child: Center(
        child: Text(
          "111",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
