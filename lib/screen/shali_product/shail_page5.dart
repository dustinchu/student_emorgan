import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShaliPage5 extends StatelessWidget {
  const ShaliPage5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 650;
    String step1Msg = '''The power leads would be coated by
PVDF.  While blood is flowing in vein,
it will move the leads back and forth
to generate electricity.''';
    String step2Msg = '''4 forks are made of this material. 
When implanting EMORGAN, retract
the protective sheath outside of the
pacemaker, and the forks will 
automatically open to hook on the 
body destination.''';
    String step3Msg = '''They have good affinity with 
organisms and does not produce 
toxic corrosion and decomposition 
substance. Moreover, They don’t 
cause biological cell mutation, 
necrosis, inflammation and growth 
Granulation. According to the above, 
the materials can be used for long-
term in human body.''';

    return Container(
      width: w,
      height: h,
      child: Container(
        padding:
            EdgeInsets.only(left: w / 3 - 150, right: w / 3 - 150, top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Setp(
              title: "Blood Flow Power\n",
              imgPath: "assets/shail_img1.png",
              msg: step1Msg,
            ),
            Setp(
              title: "Nitinol\n",
              imgPath: "assets/shail_img2.png",
              msg: step2Msg,
            ),
            Setp(
              title: "Titanium Alloy &\nBiomedical Ceramics\n",
              imgPath: "assets/shail_img3.png",
              msg: step3Msg,
            ),
          ],
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 25, bottom: 25),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
          width: 200,
          height: 200,
        ),
        Text(
          title,
          textAlign: TextAlign.start,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: product_width_medium_size(w),
                  color: Color(0xFF424648))),
        ),
        Text(
          msg,
          textAlign: TextAlign.start,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: product_width_small_size(w),
                  color: Color(0xFF424648))),
        ),
      ],
    );
  }
}