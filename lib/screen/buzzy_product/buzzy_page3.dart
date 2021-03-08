import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuzzyPage3 extends StatelessWidget {
  const BuzzyPage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 550;
    String step1Msg = '''Patch detects
the unusual pulse


 ''';
    String step2Msg = '''Patch turns A’s pulse
into electric shock 
data

 ''';
    String step3Msg = '''Electric shock data
was sent to B’s 
Buzzy Patch

 ''';
    String step4Msg = '''B feels electric shock
from A and have a
new way to read A’s 
emotion
 ''';

    return Container(
      width: w,
      height: h,
      child: Container(
         padding: EdgeInsets.symmetric(horizontal: w / 3 - 100, vertical: 20),
        child: Padding(
          padding: const EdgeInsets.only(top:20,left:50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Setp(
                title: "Step 1.",
                imgPath: "assets/product_step1.png",
                msg: step1Msg,
              ),
              Setp(
                title: "Step 2.",
                imgPath: "assets/product_step3.png",
                msg: step2Msg,
              ),
              Setp(
                title: "Step 3.",
                imgPath: "assets/product_step4.png",
                msg: step3Msg,
              ),
              Setp(
                title: "Step 4.",
                imgPath: "assets/buzzy_step4.png",
                msg: step4Msg,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Setp extends StatelessWidget {
  final String title;
  final String imgPath;
  final String msg;
  const Setp({Key key, this.title, this.imgPath, this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: product_width_medium_size(w),
                color: Color(0xFF424648)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25, bottom: 25),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
          width: 100,
          height: 100,
        ),
        Text(
          msg,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: product_width_small_size(w),
                color: Color(0xFF424648)),
          ),
        ),
      ],
    );
  }
}
