import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ObiPage4 extends StatelessWidget {
  const ObiPage4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 550;
    String step1Msg = '''Patch camera
detects the
fighting situation
 ''';
    String step2Msg = '''Patch starts
analyzing A’s data 
of voice
 ''';
    String step3Msg = '''Patch turns
A’s voice’s data
into vibrate data
 ''';
    String step4Msg = '''Taste data was
sent to B’s
Obi Emorgan''';
    String step5Msg = '''B feels the vibrate
and try to read 
A’s emotion''';

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
                imgPath: "assets/obi_step2.png",
                msg: step2Msg,
              ),
              Setp(
                title: "Step 3.",
                imgPath: "assets/product_step3.png",
                msg: step3Msg,
              ),
              Setp(
                title: "Step 4.",
                imgPath: "assets/product_step4.png",
                msg: step4Msg,
              ),
              Setp(
                title: "Step 5.",
                imgPath: "assets/obi_step5.png",
                msg: step5Msg,
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
          style: TextStyle(
              fontSize: product_width_medium_size(w), color: Color(0xFF424648)),
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
                          textStyle:  TextStyle(
              fontSize: product_width_small_size(w), color: Color(0xFF424648)),
                        ),
        ),
      ],
    );
  }
}
