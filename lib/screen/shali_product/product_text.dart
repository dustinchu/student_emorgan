import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget title(String title, String body, double w) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        textAlign: TextAlign.start,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: product_width_medium_size(w),
                color: Color(0xFF364146))),
      ),
      Text(
        body,
        textAlign: TextAlign.start,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: product_width_small_size(w),
                color: Color(0xFF364146))),
      )
    ],
  );
}

Widget msg(String title, String body, double w) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "$title\n",
        textAlign: TextAlign.start,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              fontSize: product_width_medium_size(w), color: Color(0xFF424648)),
        ),
      ),
      Text(
        "$body",
        textAlign: TextAlign.start,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              fontSize: product_width_small_size(w), color: Color(0xFF424648)),
        ),
      )
    ],
  );
}
