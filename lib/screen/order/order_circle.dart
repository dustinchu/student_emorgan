import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Circle extends StatelessWidget {
  const Circle(
      {Key key,
      @required this.imgPath,
      @required this.text,
      @required this.smill})
      : super(key: key);
  final bool smill;
  final String imgPath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: smill ? 150 : 200,
      height: smill ? 150 : 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(width: 5.0, color: Colors.white),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: smill ? 80 : 120,
            height: smill ? 80 : 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Color(0xFF424648), fontSize: smill?16:20)),
          )
        ],
      ),
    );
  }
}
