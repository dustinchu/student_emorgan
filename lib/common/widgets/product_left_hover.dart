import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_left_hover extends StatelessWidget {
  final String title;
  final String body;
  final double lineWidth;
  const Product_left_hover({Key key, this.title, this.body, this.lineWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Color(0xFF424648),
                      fontSize: product_width_medium_size(w))),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: lineWidth,
              height: 1,
              color: Color(0xFF424648),
            )
          ],
        ),
        Text(
          body,
          textAlign: TextAlign.start,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Color(0xFF424648),
                  fontSize: product_width_small_size(w))),
        ),
      ],
    );
  }
}
