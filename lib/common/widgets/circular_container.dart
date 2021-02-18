import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                            // color:Colors.pink,
                            color: Color(0x807A82A7), // 底色
                            borderRadius:
                                new BorderRadius.circular((30.0)), // 圆角度
                          ),
                        );
  }
}
