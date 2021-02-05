import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'main2.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = "Show up Demo";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: this.title),
    );
  }
}

bool first = false;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFC8C1EF),
      body: Container(
        color:Colors.transparent,
        child: SizedBox(
          height: 500,
          width: 500,
          child: ImagePage(
            finderName: "buzzy",
          ),
        ),
      ),
    );
  }
}
