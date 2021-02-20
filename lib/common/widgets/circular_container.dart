import 'package:flutter/material.dart';

import 'detsIntroAnimation.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({Key key,this.infoAnimation}) : super(key: key);
 final DetsIntroAnimation infoAnimation;
  @override
  Widget build(BuildContext context) {
    return Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                            // color:Colors.pink,
                            color: Color(0x807A82A7).withOpacity(infoAnimation.circularColorOpacity.value), // 底色
                            borderRadius:
                                new BorderRadius.circular((30.0)), // 圆角度
                          ),
                        );
  }
}
