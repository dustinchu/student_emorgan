import 'package:flutter/material.dart';

class ProductCircle extends StatelessWidget {
  const ProductCircle({Key key}) : super(key: key);

  Widget circle() {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF7A82A7),
        // bProduct: BProduct.all(width: 5.0, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        circle(),
        SizedBox(
          width: 20,
        ),
        circle(),
        SizedBox(
          width: 20,
        ),
        circle(),
      ],
    );
  }
}
