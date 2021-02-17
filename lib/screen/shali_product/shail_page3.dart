import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/screen/shali_product/top_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'product_text.dart';

class ShaliPage3 extends StatelessWidget {
  const ShaliPage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 900;
    String human_aMsg = '''The doctor will simulate your expression in any state with your 3D model on the computer first.

Then decide the final position according to the feeling of placing it directly on your face and the product functions.''';
    String human_bMsg = '''The Shali organ will be implanted on the salivary gland.''';
    double lineTop(w) {
      if (w > 1600)
        return 0;
      else if (w > 1500)
        return 20;
      else if (w > 1300)
        return 40;
      else if (w > 1100) return 60;
      return 80;
    }

    return Container(
        width: w,
        height: h,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: w / 3 - 100, vertical: 40),
          child: Padding(
              padding: const EdgeInsets.only(top:20,left:50),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: w / 5-50,
                      child: Column(
                        children: [
                          Text(
                            "Human A",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: product_width_medium_size(w),
                                  color: Color(0xFF424648)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 25, bottom: 25),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/human_a.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width: w / 5-50,
                                height: w / 5 + 50,
                              ),
                              msg("How to put on Shali Patch", human_aMsg, w),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: w / 5-50,
                      child: Column(
                        children: [
                          Text(
                            "Human B",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: product_width_medium_size(w),
                                  color: Color(0xFF424648)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 25, bottom: 25),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/human_b.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width: w / 5-50,
                                height: w / 5 + 50,
                              ),
                              msg("How to Implant Shali Emorgan", human_bMsg, w),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: h / 3.5 - lineTop(w),
                  left: w / 3 / 2-40,
                  child: Container(
                      margin: EdgeInsets.only(),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/human_line.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: 250,
                      height: 20),
                )
                //  Align(
                //     child:
                //   ),
              ],
            ),
          ),
        ));
  }
}
