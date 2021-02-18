import 'package:emorgan/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderAppbar extends StatelessWidget {
  const OrderAppbar({Key key, this.colorStatus}) : super(key: key);
  final List<bool> colorStatus;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    Widget appbarText(String text, bool status) {
      return Column(
        children: [
          Expanded(child: Container()),
          Text(
            text,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 18, color: Color(0xFF364146)),
            ),
          ),
          Expanded(child: Container()),
          status
              ? Container(
                  color: Color(0xFF7A82A7),
                  height: 6,
                  width: 180,
                )
              : Container()
        ],
      );
    }

    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/appbar_bk.png"),
                fit: BoxFit.cover,
              ),
            ),
            width: w,
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    print("????");
                    MaterialPageRoute(builder: (context) => HomeScreen()); 
                  },
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 50, right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/logo.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: 30,
                        height: 30,
                      ),
                      Text(
                        "Emorgan",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Color(0xFF7A82A7), fontSize: 32)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      appbarText("1. Shopping Code", colorStatus[0]),
                      appbarText("2. Emorgan Patch", colorStatus[1]),
                      appbarText("3. Operation Date", colorStatus[2]),
                      appbarText("4. Payment", colorStatus[3]),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
