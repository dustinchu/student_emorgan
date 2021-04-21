import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBigBanner extends StatefulWidget {
  HomeBigBanner({Key key, this.upBtn}) : super(key: key);
  final VoidCallback upBtn;
  @override
  _HomeBigBannerState createState() => _HomeBigBannerState();
}

class _HomeBigBannerState extends State<HomeBigBanner> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    double h = 1500;
    return Stack(
      children: [
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/big_banner_backroung.png"),
              fit: BoxFit.cover,
            ),
          ),
          // child:Center(child: Image.asset("assets/big_banner.png",width: 760,height: 500,),)
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 200, vertical: 200),
            child: Center(child: Image.asset("assets/big_banner.png",width: 760,height: 500,))
            // child: Container(
            //   width: 760,
            //   height: 500,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage("assets/big_banner.png"),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
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
    );
  }
}
