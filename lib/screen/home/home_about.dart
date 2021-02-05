import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:flutter/material.dart';

class HomeAbout extends StatelessWidget {
  const HomeAbout({Key key, this.upBtn}) : super(key: key);
  final VoidCallback upBtn;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    Widget participation(String t1, String t2) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(t1,
                style: TextStyle(color: Color(0xFF364146), fontSize: 12)),
          ),
          Expanded(
            child: Text(t2,
                style: TextStyle(color: Color(0x80424648), fontSize: 12)),
          )
        ],
      );
    }

    return Container(
      width: w,
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
          Expanded(
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
                  height: 200,
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
                            Text("Emorgan CEO",
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
                            Text("Emorgan CEO",
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
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Image.asset('assets/icon_up.png'),
                        onPressed: upBtn,
                      )
                    ],
                  ),
                  Text("About EMOGRAN",
                      style: TextStyle(
                          color: Color(0xFF364146),
                          fontSize: windows_width_medium_size(w))),
                  Text("For Love, For Future",
                      style: TextStyle(
                          color: Color(0xFF364146),
                          fontSize: windows_width_large_size(w))),
                  SizedBox(
                    height: 50,
                  ),
                  Text('''Emorgan wish every couple has another
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
                      style: TextStyle(
                          color: Color(0xFF364146),
                          fontSize: windows_width_small_size(w))),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Participation",
                          style: TextStyle(
                              color: Color(0xFF7A82A7),
                              fontSize: windows_width_small_size(w))),
                      SizedBox(
                        height: 20,
                      ),
                      participation("Dustin, Chu", "Website Engineer"),
                      SizedBox(
                        height: 10,
                      ),
                      participation("Chih Hung, Lin", "Animator"),
                      SizedBox(
                        height: 10,
                      ),
                      participation("Osborne, Zhu", "Animator"),
                      SizedBox(
                        height: 10,
                      ),
                      participation("Gimmy", "Photographer"),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/email.png",
                            width: 15,
                            height: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Participation",
                              style: TextStyle(
                                  color: Color(0xFF7A82A7),
                                  fontSize: windows_width_small_size(w)))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/phone.png",
                            width: 15,
                            height: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("0912-283-063",
                              style: TextStyle(
                                  color: Color(0xFF7A82A7),
                                  fontSize: windows_width_small_size(w)))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/ig.png",
                            width: 15,
                            height: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("emorgan_creation",
                              style: TextStyle(
                                  color: Color(0xFF7A82A7),
                                  fontSize: windows_width_small_size(w)))
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Text("© 2020-2047 EMORGAN",
                            style: TextStyle(
                                color: Color(0xFFC8C1EF),
                                fontSize: windows_width_small_size(w))),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
