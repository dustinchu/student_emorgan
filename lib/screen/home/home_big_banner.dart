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
    double h = 1100;
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
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 200, vertical: 50),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EMORGAN",
                      style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xFF7A82A7), fontSize: 44),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/big_banner.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "FOR LOVE FOR FUTURE",
                      style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Color(0xFF7A82A7), fontSize: 44),
                      ),
                    )
                  ],
                ),
              ],
            ),
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
