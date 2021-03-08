import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'product_text.dart';

class BuzzyPage2 extends StatelessWidget {
  const BuzzyPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 1000;
    String human_aMsg = '''The doctor will simulate your expression in any
state with your 3D model on the computer first.

Then decide the final position according to the
feeling of placing it directly on your face and the
product functions.''';
    String human_bMsg =
        '''The doctor will simulate your body action in any state with your 3D model 
on the computer first. 

Then decide the final position according to the feeling of placing it directly
on your body and the product functions.
''';
    double lineTop(w) {
      if (w > 1600)
        return 0;
      else if (w > 1500)
        return 20;
      else if (w > 1300)
        return 40;
      else if (w > 1100) return 60;
      return 70;
    }

    double lineWidght(w) {
      if (w > 1400)
        return 0;
      else if (w > 1300)
        return 40;
      else if (w > 1000) return 60;
      return 30;
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
                Column(
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
                                        image: AssetImage("assets/buzzy_human_a.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    width: w / 5-50,
                                height: w / 5 + 50,
                                  ),
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
                                        image: AssetImage("assets/buzzy_human_b.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                   width: w / 5-50,
                                height: w / 5 + 50,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    msg("How to put on Buzzy Patch", human_bMsg, w),
                  ],
                ),
                Positioned(
                  top: 280,
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
