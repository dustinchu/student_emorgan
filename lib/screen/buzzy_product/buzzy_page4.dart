import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuzzyPage4 extends StatelessWidget {
  const BuzzyPage4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 650;
    String step1Msg = '''When measuring, it emits green light and penetrates the skin. The human blood is red and will absorb green light. When the heart beats, the blood flow increases, and the amount of green light absorption increases, and vice versa. Thereby, the heart rate is measured based on the blood absorbance.''';
    String step2Msg = '''Use low-frequency current to control the user’s muscle expansion and transform the partner’s emotions into a sense of touch.'''; 

    return Container(
      width: w,
      height: h,
      child: Container(
        padding:
            EdgeInsets.only(left: w / 3 - 100, right: w / 3 - 100, top: 40),
        child: Padding(
           padding: const EdgeInsets.only(top:20,left:50,bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Setp(
                title: "PhotoPlethysmoGraphy\n",
                imgPath: "assets/buzzy_img1.png",
                msg: step1Msg,
              ),
               SizedBox(width: 50,),
              Setp(
                title: "Low-frequency Therapy\n",
                imgPath: "assets/buzzy_img2.png",
                msg: step2Msg,
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
    return Container(
      width: 240,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 25),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgPath),
             fit: BoxFit.fill,
              ),
            ),
           width: 240,
            height: 200,
          ),
          Text(
            title,
            textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: product_width_medium_size(w),
                  color: Color(0xFF424648)),
            ),
          ),
          Text(
            msg,
            textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: product_width_small_size(w),
                  color: Color(0xFF424648)),
            ),
          ),
        ],
      ),
    );
  }
}
