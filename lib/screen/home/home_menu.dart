import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  final bool selected;
  final VoidCallback emorgan;
  final VoidCallback products;
  final VoidCallback purchase;
  final VoidCallback book;
  final VoidCallback user;
  final VoidCallback contact;
  final VoidCallback about;
  const HomeMenu(
      {Key key,
      this.selected,
      this.emorgan,
      this.products,
      this.purchase,
      this.book,
      this.user,
      this.contact,
      this.about})
      : super(key: key);
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

bool touch = false;
bool inner = false;
bool out = false;

class _HomeMenuState extends State<HomeMenu> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    List<String> listStr = [
      "Emorgan",
      "Products",
      "Purchase Process",
      "Book a counseling",
      "User Feedback",
      "Contact us",
      "About us",
    ];

    animation =
        Tween(begin: Offset(-1.5, 0), end: Offset(0, 0)).animate(controller);

    return Row(children: [
      InkWell(
        onTap: () {},
        //觸控執行動畫
        onHover: (value) {
          if (value) controller.forward();
        },
        child: Column(
          children: listStr
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(bottom: 5),
                  height: 20,
                  width: 2,
                  color: false ? Color(0xFF7A82A7) : Color(0x807A82A7),
                ),
              )
              .toList(),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      SlideTransition(
        position: animation,
        child: InkWell(
          onTap: () {},
          onHover: (value) {
            if (!value) controller.reverse();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              menuItem(listStr[0], widget.emorgan),
              menuItem(listStr[1], widget.products),
              menuItem(listStr[2], widget.purchase),
              menuItem(listStr[3], widget.book),
              menuItem(listStr[4], widget.user),
              menuItem(listStr[5], widget.contact),
              menuItem(listStr[6], widget.about),
            ],
            // children: listStr
            //     .map((value) => Container(
            //           padding: EdgeInsets.all(0),
            //           height: 20,
            //           margin: EdgeInsets.only(bottom: 5),
            //           alignment: Alignment.centerLeft,
            //           child: Text(
            //             "$value",
            //             style:
            //                 TextStyle(fontSize: 12, color: Color(0x80424648)),
            //           ),
            //         ),)
            //     .toList(),
          ),
        ),
      ),
    ]);

    // return Column(
    //   children: [
    //     menu("Emorgan", true,w),
    //     menu("Products", false,w),
    //     menu("Purchase Process", false,w),
    //     menu("Book a counseling", false,w),
    //     menu("User Feedback", false,w),
    //     menu("Contact us", false,w),
    //     menu("About us", false,w)
    //   ],
    // );
  }

  Widget menuItem(String value, VoidCallback ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(0),
        height: 20,
        margin: EdgeInsets.only(bottom: 5),
        alignment: Alignment.centerLeft,
        child: Text(
          "$value",
          style: TextStyle(fontSize: 12, color: Color(0x80424648)),
        ),
      ),
    );
  }
  // Widget menu(String text, bool selected, w) {
  //   return Material(
  //     color: Colors.transparent,
  //     child: InkWell(
  //       onTap: () {
  //         print(text);
  //       },
  //       child: Container(
  //         padding: EdgeInsets.symmetric(vertical: 5),
  //         child: Row(
  //           children: [
  //             Container(
  //               height: 26,
  //               width: 2,
  //               color: selected ? Color(0xFF7A82A7) : Color(0x807A82A7),
  //             ),
  //             Text(
  //               text,
  //               style: TextStyle(
  //                   fontSize: windows_width_medium_size(w),
  //                   color: selected ? Color(0xFF7A82A7) : Color(0x807A82A7)),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
