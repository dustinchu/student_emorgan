import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ObiPage5 extends StatelessWidget {
  const ObiPage5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 650;
    String step1Msg = '''The power leads would be
coated by PVDF.  While blood
is flowing in vein, it will move
the leads back and forth to
generate electricity.





  
  
  ''';
    String step2Msg = '''4 forks are made of this
material. When implanting
EMORGAN, retract the
protective sheath outside of
the EMORGAN, and the forks
will automatically open to
hook on the implantation 
destination.




  ''';
    String step3Msg = '''They have good affinity with
organisms and does not
produce toxic corrosion and
decomposition substance.
Moreover, They don’t cause
biological cell mutation,
necrosis, inflammation and
growth Granulation.
According to the above, the
materials can be used for
long- term in human body.
''';

    return Container(
      width: w,
      height: h,
      child: Container(
        padding:
            EdgeInsets.only(left: w / 3 - 100, right: w / 3 - 100, top: 40),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 50, bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Setp(
                title: "Blood Flow Power\n  ",
                imgPath: "assets/shail_img1.png",
                msg: step1Msg,
                isHeight: true,
              ),
              SizedBox(
                width: 10,
              ),
              Setp(
                title: "Nitinol\n  ",
                imgPath: "assets/shail_img2.png",
                msg: step2Msg,
                isHeight: true,
              ),
              SizedBox(
                width: 10,
              ),
              Setp(
                title: "Titanium Alloy &\nBiomedical Ceramics\n",
                imgPath: "assets/shail_img3.png",
                msg: step3Msg,
                isHeight: false,
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
  final bool isHeight;
  const Setp({Key key, this.title, this.imgPath, this.msg, this.isHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: 240,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: product_width_medium_size(w),
                    color: Color(0xFF424648)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              msg,
              textAlign: TextAlign.start,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: product_width_small_size(w),
                      color: Color(0xFF424648))),
            ),
          ),
               isHeight
              ? SizedBox(
                  height: 6,
                )
              : Container(),
        ],
      ),
    );
  }
}
