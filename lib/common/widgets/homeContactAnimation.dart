import 'package:flutter/material.dart';

class HomeContactAnimation {
  HomeContactAnimation(
      this.controller, this.containerWidth, this.containerHeight)
      : sizeBoxWidth = new Tween(begin: containerWidth, end: 885.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.0, 1.0, curve: Curves.fastOutSlowIn))),
        sizeBoxHeight = new Tween(begin: containerHeight, end: 510.0)
            .animate(new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.0, 1.0, curve: Curves.fastOutSlowIn)));
  final AnimationController controller;

  final Animation<double> sizeBoxWidth;
  final Animation<double> sizeBoxHeight;
  final double containerWidth;
  final double containerHeight;
}
