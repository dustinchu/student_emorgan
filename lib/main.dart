import 'package:emorgan/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'buzzy – Emorgan情緒器官',
      theme: ThemeData(
      ),
      home: Scaffold(body: HomeScreen())
    );
  }
}

