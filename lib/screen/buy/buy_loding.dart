import 'package:flutter/material.dart';

class Buyloding extends StatefulWidget {
  Buyloding({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _BuylodingState createState() => _BuylodingState();
}

List<String> listStr = [
  "Emorgan",
  "Products",
  "Purchase Process",
  "Book a counseling",
  "User Feedback",
  "Contact us",
  "About us",
];

class _BuylodingState extends State<Buyloding> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    //       ..addStatusListener((status) {
    //         if (status == AnimationStatus.completed) {
    //           controller.reverse();
    //         } else if (status == AnimationStatus.dismissed) {
    //           controller.forward();
    //         }
    //       });
    // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    animation =
        Tween(begin: Offset(-1.5, 0), end: Offset(0, 0)).animate(controller);
    return Scaffold(
      appBar: AppBar(title: Text("平移动画")),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: listStr
                      .map(
                        (e) => Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: 26,
                          width: 2,
                          color: false ? Color(0xFF7A82A7) : Color(0x807A82A7),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  width: 5,
                ),
                SlideTransition(
                  position: animation,
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value)
                        controller.forward();
                      else
                        controller.reverse();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: listStr
                          .map((value) => Container(
                                padding: EdgeInsets.all(0),
                                height: 26,
                                margin: EdgeInsets.only(bottom: 5),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "$value",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0x80424648)),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            FlatButton(
                onPressed: () {
                  controller.forward();
                },
                child: Text("open")),
            FlatButton(
                onPressed: () {
                  controller.reverse();
                },
                child: Text("close"))
          ],
        ),
        // child: SlideTransition(
        //   position: animation,
        //   child: Container(
        //     // margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        //     width: 100,
        //     height: 100,
        //     color: Colors.red,
        //   ),
        // ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
