import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

const numberOfItems = 5001;
const minItemHeight = 20.0;
const maxItemHeight = 150.0;
const scrollDuration = Duration(seconds: 2);

void main() {
  runApp(ScrollablePositionedListExample());
}

// The root widget for the example app.
class ScrollablePositionedListExample extends StatelessWidget {
  const ScrollablePositionedListExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScrollablePositionedList Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Page(),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);
    return Scaffold(
      body: Container(
          child: Listener(
        onPointerSignal: (pointerSignal) {
          if (pointerSignal is PointerScrollEvent) {
            print(pointerSignal.scrollDelta.dx);
            print("AA${pointerSignal.scrollDelta.dy}");
            // do something when scrolled
          }
        },
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 900,
              color: Colors.redAccent,
            ),
            Container(
              height: 900,
              color: Colors.purpleAccent,
            ),
            Container(
              height: 900,
              color: Colors.amberAccent,
            ),
            Container(
              height: 900,
              color: Colors.blueAccent,
            ),
            Container(
              height: 900,
              color: Colors.pinkAccent,
            ),
            Container(
              height: 900,
              color: Colors.greenAccent,
            )
          ],
        ),
      )),
    );
  }
}
