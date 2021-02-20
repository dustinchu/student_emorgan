import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';

import 'detsIntroAnimation.dart';

class Product_left_animation_hover extends StatelessWidget {
  final DetsIntroAnimation infoAnimation;
  final String title;
  final String body;
  const Product_left_animation_hover(
      {Key key,
      this.infoAnimation,
      this.title,
      this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: product_width_medium_size(w),
                  color: Color(0xFF424648).withOpacity(infoAnimation.textOpacity.value),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(color: Colors.transparent,height: 0.1,width: infoAnimation.dividerSizeBoxWidth.value,),
              Container(
                width: infoAnimation.dividerWidth.value,
                height: 1,
                color: Color(0xFF424648),
              )
            ],
          ),
          Text(
            body,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: product_width_small_size(w),
                color: Color(0xFF424648).withOpacity(infoAnimation.textOpacity.value)),
          ),
        ],
      ),
    );
  }
}
