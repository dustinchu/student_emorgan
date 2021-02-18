import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    int dateIndex = 0;
    //得到日期
    String getDateStr(int addDate) {
      String date = DateFormat("E.", "en_US")
          .format(DateTime.now().add(new Duration(days: addDate + dateIndex)));
      if (date == "Sun.") {
        date = DateFormat("E.", "en_US").format(
            DateTime.now().add(new Duration(days: addDate + dateIndex + 1)));
        dateIndex = 1;
      }

      return date;
    }

    return Scaffold(
      body: Container(
          child: Center(
        child: FlatButton(
          onPressed: () {
            print("Date===${getDateStr(1)}");
            print("Date===${getDateStr(2)}");
            print("Date===${getDateStr(3)}");
            print("Date===${getDateStr(4)}");
            print("Date===${getDateStr(5)}");
            print("Date===${getDateStr(6)}");
          },
          child: Text("!@3213"),
        ),
      )),
    );
  }
}
