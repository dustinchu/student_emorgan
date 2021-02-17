import 'package:flutter/material.dart';

class HomeVidio extends StatefulWidget {
  HomeVidio({Key key}) : super(key: key);

  @override
  _HomeVidioState createState() => _HomeVidioState();
}

class _HomeVidioState extends State<HomeVidio> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    double h = 1300;
    return Container(
      width: w,
      height: h,
      child: Center(
        child: Text("111"),
      ),
    );
  }
}
