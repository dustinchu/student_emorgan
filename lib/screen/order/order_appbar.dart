import 'package:emorgan/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderAppbar extends StatelessWidget {
  const OrderAppbar(
      {Key key, this.colorStatus, this.clickPage1, this.clickPage2,this.beforStatus})
      : super(key: key);
       final List<bool> beforStatus;
  final List<bool> colorStatus;
  final VoidCallback clickPage1;
  final VoidCallback clickPage2;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    Widget appbarText(String text, bool status,bool  beforStatus) {
      return Column(
        children: [
          Expanded(child: Container()),
          Text(
            text,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 18, color: status ?Color(0xFF364146):beforStatus?Color(0xFF364146):Color(0x80364146)),
            ),
          ),
          Expanded(child: Container()),
          Container(
            color:  status?Color(0xFF7A82A7):Colors.transparent,
            height: 6,
            width: 180,
          )
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen(pageAnimate: 0,pageIndex: 0,)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 50, right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/logo.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        width: 270,
                        height: 40,
                      ),
                      // Container(
                      //   padding: EdgeInsets.only(bottom: 15),
                      //   child: Text(
                      //     "Emorgan",
                      //     style: TextStyle(
                      //         fontFamily: 'Beware',
                      //         color: Color(0xFF7A82A7),
                      //         fontSize: 34),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: clickPage1,
                          child:
                              appbarText("1. Shopping Code", colorStatus[0],beforStatus[0])),
                      InkWell(
                          onTap: clickPage2,
                          child:
                              appbarText("2. Emorgan Patch", colorStatus[1],beforStatus[1])),
                      appbarText("3. Operation Date", colorStatus[2],beforStatus[2]),
                      appbarText("4. Payment", colorStatus[3],beforStatus[3]),
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
