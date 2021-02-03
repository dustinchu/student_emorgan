import 'package:emorgan/common/font_size.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
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
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    return Column(
      children: [
        menu("Emorgan", true,w),
        menu("Products", false,w),
        menu("Purchase Process", false,w),
        menu("Book a counseling", false,w),
        menu("User Feedback", false,w),
        menu("Contact us", false,w),
        menu("About us", false,w)
      ],
    );
  }

  Widget menu(String text, bool selected,w) {
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
                    fontSize:windows_width_medium_size(w),
                    color: selected ? Color(0xFF7A82A7) : Color(0x807A82A7)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
