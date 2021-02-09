import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAbout extends StatefulWidget {
  const HomeAbout({Key key, this.upBtn}) : super(key: key);
  final VoidCallback upBtn;

  @override
  _HomeAboutState createState() => _HomeAboutState();
}

class _HomeAboutState extends State<HomeAbout>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 900;
    Widget participation(String t1, String t2) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            t1,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Color(0xFF364146), fontSize: 12)),
          ),
          SizedBox(
            width: 160,
          ),
          Text(
            t2,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Color(0x80424648), fontSize: 12)),
          ),
        ],
      );
    }

    Widget iconText(String img, String text) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            img,
            width: 15,
            height: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Color(0xFF7A82A7),
                    fontSize: windows_width_small_size(w))),
          )
        ],
      );
    }

    return Container(
      width: w,
      height: 900,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/help.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: (w / 3) * 2,
            child: Column(
              children: [
                Container(
                  width: (w / 3) * 2,
                  height: 755,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/people.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Wen-Chien,Wu",
                                style: TextStyle(
                                    color: Color(0xFF324146),
                                    fontSize: windows_width_large_size(w))),
                            Text("Emorgan Designer",
                                style: TextStyle(
                                    color: Color(0x80424648),
                                    fontSize: windows_width_medium_size(w))),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Wen-Chien,Wu",
                                style: TextStyle(
                                    color: Color(0xFF324146),
                                    fontSize: windows_width_large_size(w))),
                            Text("Emorgan Designer",
                                style: TextStyle(
                                    color: Color(0x80424648),
                                    fontSize: windows_width_medium_size(w))),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: w / 3,
                height: h,
                color: Colors.white,
                padding: EdgeInsets.only(top:20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "About EMOGRAN",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF364146),
                              fontSize: windows_width_medium_size(w))),
                    ),
                    Text(
                      "For Love, For Future",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF364146),
                              fontSize: windows_width_large_size(w))),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      '''Emorgan wish every couple has another
chance to love again.
\n
We care about human mental needs.
We focus on development of biomedical
technology and materials.
\n
Emorgan has three sets of products:“Obi”,
“Shali” and “Buzzy”.
\n
We are simultaneously developing
more products that will help humans to be
spiritually assisted.''',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF364146),
                              fontSize: windows_width_small_size(w))),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Participation",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF7A82A7),
                              fontSize: windows_width_small_size(w))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    participation("Dustin, Chu     ", "Website Engineer"),
                    SizedBox(
                      height: 10,
                    ),
                    participation("Chih Hung, Lin", "Animator"),
                    SizedBox(
                      height: 10,
                    ),
                    participation("Osborne, Zhu  ", "Animator"),
                    SizedBox(
                      height: 10,
                    ),
                    participation("Gimmyfoto      ", "Photographer"),
                    SizedBox(
                      height: 50,
                    ),
                    iconText("assets/email.png", "Participation"),
                    SizedBox(
                      height: 10,
                    ),
                    iconText("assets/phone.png", "0912-283-063"),
                    SizedBox(
                      height: 10,
                    ),
                    iconText("assets/ig.png", "emorgan_creation"),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                child: Text(
                  "© 2020-2047 EMORGAN",
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xFFC8C1EF),
                          fontSize: windows_width_small_size(w))),
                ),
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child: IconButton(
                    icon: Image.asset('assets/icon_up.png'),
                    onPressed: widget.upBtn,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
