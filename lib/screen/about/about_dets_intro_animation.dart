import 'package:flutter/material.dart';

class AboutDetsIntroAnimation {
  AboutDetsIntroAnimation(this.controller)
      : 
        locationOpacity = new Tween(begin: 0.0, end: 0.85).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.3, 0.600, curve: Curves.easeIn))),
        dividerWidth = new Tween(begin: 0.6, end: 225.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.0, 0.3, curve: Curves.fastOutSlowIn)));

  final AnimationController controller;

  final Animation<double> dividerWidth;
  final Animation<double> locationOpacity;
}
