import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text("Choose a demo"),
      ),
      body: Column(
        children: [
          FlatButton(
              onPressed: () {
                setState(() {
                  first = !first;
                });
              },
              child: Text("213123123")),
          Center(
            child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 1000 ),
              firstChild: Container(), // When you don't want to show menu..
              secondChild: Row(
                children: [Square(), Square(), Square(), Square()],
              ),
              crossFadeState:
                  first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          ),
        ],
      ),
    );
  }
}

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
    );
  }
}
