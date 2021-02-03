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

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    List<String> listStr = [
      "Emorgan",
      "Products",
      "Purchase Process",
      "Book a counseling",
      "User Feedback",
      "Contact us",
      "About us",
    ];

    double w = MediaQuery.of(context).size.width;
    return Row(
      
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
        width: 10,
      ),
      AnimatedCrossFade(
        duration: const Duration(milliseconds: 700),
        //讓沒元件的時候一樣高
        firstChild: InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              if (out == false) {
                out = true;
                touch = value;
              }
            });
          },
          child: Container(
            width: 150,
            height: 250,
            // color:Colors.black,
          ),
        ),
        secondChild: InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              if (out == true) {
                if (value == false) {
                  // print(value);
                  out = false;
                  touch = value;
                }
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: listStr
                .map((value) => Container(
                      padding: EdgeInsets.all(0),
                      height: 26,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.center,
                      child: Text(
                        "$value",
                        style: TextStyle(
                            fontSize: windows_width_medium_size(w),
                            color: Color(0xFF424648)),
                      ),
                    ))
                .toList(),
          ),
        ),
        crossFadeState:
            touch ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      )
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

  Widget menu(String text, bool selected, w) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print(text);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Container(
                height: 26,
                width: 2,
                color: selected ? Color(0xFF7A82A7) : Color(0x807A82A7),
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: windows_width_medium_size(w),
                    color: selected ? Color(0xFF7A82A7) : Color(0x807A82A7)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
