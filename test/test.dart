import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'buzzy – Emorgan情緒器官',
        initialRoute: "/",
        home: TM());
  }
}

class TM extends StatelessWidget {
  const TM({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FlatButton(
          child: Text("213213"),
          onPressed: () {},
        ),
      ),
    );
  }
}
