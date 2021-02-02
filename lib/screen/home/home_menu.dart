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
    return Column(
      children: [
        menu("Emorgan", true),
        menu("Products", false),
        menu("Purchase Process", false),
        menu("Book a counseling", false),
        menu("User Feedback", false),
        menu("Contact us", false),
        menu("About us", false)
      ],
    );
  }

  Widget menu(String text, bool selected) {
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
                    fontSize: 20,
                    color: selected ? Color(0xFF7A82A7) : Color(0x807A82A7)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
