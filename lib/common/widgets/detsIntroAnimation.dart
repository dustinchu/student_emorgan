import 'package:flutter/material.dart';

class DetsIntroAnimation {
  DetsIntroAnimation(this.controller, this.containerDividerWidth)
      : textOpacity = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.3, 0.600, curve: Curves.easeIn))),
        dividerWidth = new Tween(begin: 0.6, end: containerDividerWidth)
            .animate(new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.0, 0.3, curve: Curves.fastOutSlowIn))),
        dividerSizeBoxWidth = new Tween(begin: containerDividerWidth, end: 0.0)
            .animate(new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.0, 0.3, curve: Curves.fastOutSlowIn))),
        circularColorOpacity = new Tween(begin: 0.5, end: 0.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.0, 0.300, curve: Curves.easeIn)));
  final AnimationController controller;

  final Animation<double> dividerWidth;
  final Animation<double> textOpacity;
  final Animation<double> dividerSizeBoxWidth;
  final Animation<double> circularColorOpacity;
  final double containerDividerWidth;
}
