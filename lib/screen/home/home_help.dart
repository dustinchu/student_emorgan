import 'package:flutter/material.dart';

class HomeHelp extends StatelessWidget {
  const HomeHelp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> stepList = [
      step("Step 1.", "assets/step1.png", "Book a counseling Online ", "", ""),
      step("Step 2.", "assets/step2.png", "Get the consent and",
          "emorgan-purchse code", "from the psychologist"),
      step("Step 3.", "assets/step3.png", "Purchase Obi, Shali or",
          "Buzzy online", ""),
      step("Step 4.", "assets/step4.png", "Put on your Obi, Shali or", "Buzzy",
          ""),
      step("Step 5.", "assets/step5.png", "Exchange of emotion",
          "experience with your", "partner"),
      step("Step 6.", "assets/step6.png", "Go back for a",
          "follow-up consultation", ""),
      step("Step 7.", "assets/step7.png", "Keep your relationship ", "", ""),
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/help.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 22,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Image.asset('assets/icon_up.png'),
                  onPressed: () {},
                  // onPressed: () => widget.scrollController.animateTo(.0,
                  //     duration: Duration(milliseconds: 200),
                  //     curve: Curves.ease),
                )
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        stepList[0],
                        stepList[1],
                        stepList[2],
                        stepList[3],
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        stepList[4],
                        stepList[5],
                        stepList[6],
                      ],
                    ),
                  ],
                ),
              ),
              helpText(w)
            ],
          ),
        ],
      ),
    );
  }

  Widget step(
      String title, String imgPath, String body, String body1, String body2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF424648),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
          width: 120,
          height: 120,
        ),
        Text(
          body,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF424648),
          ),
        ),
        Text(
          body1,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF424648),
          ),
        ),
        Text(
          body2,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF424648),
          ),
        ),
      ],
    );
  }

  Widget helpText(w) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: w / 6),
      width: w,
      height: 400,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Purchase Process",
            style: TextStyle(fontSize: 22, color: Color(0xFF364146)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Know Your Needs First",
            style: TextStyle(fontSize: 36, color: Color(0xFF364146)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "We understand that when you come to this website, you want a better solution. There might ",
            style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
          ),
          Text(
            "be some problems with you and your partner. ",
            style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "You have tried many methods, but they were not satisfied.",
            style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "We suggest that you and your partner can talk to our psychological counselors first, they will \nhelp you with relationship and emotion problems, and  also make a serious decision \nwhether you need emorgans and help you grow in understanding each other.",
            style: TextStyle(fontSize: 18, color: Color(0xFF364146)),
          ),
        ],
      ),
    );
  }
}
