import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/common/padding_size.dart';
import 'package:flutter/material.dart';

class HomeFeedback extends StatelessWidget {
  const HomeFeedback({Key key, this.upBtn}) : super(key: key);
  final VoidCallback upBtn;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 50),
          width: w,
          height: 375,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/feedback.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: EdgeInsets.symmetric(
                // horizontal: windowsPaddingWidthSize(100)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "User Feedback",
                          style: TextStyle(
                              fontSize: windows_width_medium_size(w),
                              color: Color(0xFF424648)),
                        ),
                        Text(
                          "See How They Feel",
                          style: TextStyle(
                              fontSize: windows_width_large_size(w),
                              color: Color(0xFF424648)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Here are some Emo’s feedback of Emorgan.\n",
                          style: TextStyle(
                              fontSize: windows_width_small_size(w),
                              color: Color(0xFF424648)),
                        ),
                        Text(
                          "We collected Emos’ feedbacks who have used\nEMORGAN for more than one year to provide\reference for new EMOs.",
                          style: TextStyle(
                              fontSize: windows_width_small_size(w),
                              color: Color(0xFF424648)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 20,
            right: 20,
            child: IconButton(
              icon: Image.asset('assets/icon_up.png'),
              onPressed: upBtn,
            )),
      ],
    );
  }
}
