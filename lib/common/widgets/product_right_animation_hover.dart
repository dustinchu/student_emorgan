import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detsIntroAnimation.dart';

class Product_right_animation_hover extends StatelessWidget {
  final DetsIntroAnimation infoAnimation;
  final String title;
  final String body;
  const Product_right_animation_hover(
      {Key key, this.infoAnimation, this.title, this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: infoAnimation.dividerWidth.value,
                height: 1,
                color: Color(0xFF424648),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: infoAnimation.dividerSizeBoxWidth.value,
                height: 0.1,
                color: Colors.transparent,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF424648).withOpacity(
                                  infoAnimation.textOpacity.value)),
                          fontSize: product_width_medium_size(w))),
                  Text(body,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF424648).withOpacity(
                                  infoAnimation.textOpacity.value)),
                          fontSize: product_width_small_size(w))),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
