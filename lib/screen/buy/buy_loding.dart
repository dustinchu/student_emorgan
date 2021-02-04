import 'package:emorgan/common/font_size.dart';
import 'package:emorgan/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class Buyloding extends StatefulWidget {
  Buyloding({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _BuylodingState createState() => _BuylodingState();
}

class _BuylodingState extends State<Buyloding> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  bool start = false;
  bool startHome = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    //圖片旋轉動畫
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween(begin: 0.0, end: 0.75).animate(controller);

    /*
    常用的方法有forward()：启动动画；
    reverse({double from}：倒放动画；
    reset()：重置动画，将其设置到动画的开始位置；
    stop({ bool canceled = true })：停止动画。
    */
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          start = true;
        });
        Future.delayed(Duration(seconds: 2), () {
          // print('延遲1s执行');
          setState(() {
            startHome = true;
          });
        });
        // print("結束completed");
        // controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        // print("dismissed");
        controller.forward();
      } else if (status == AnimationStatus.forward) {
        // print("啟動forward");
      } else if (status == AnimationStatus.reverse) {
        // print("reverse");
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      child: startHome
          ? Scaffold(body: HomeScreen())
          : Scaffold(
              body: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/loding_bk.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: w,
                    height: h,
                    // child: successful(w, h),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 600),
                      child: start ? successful(w, h) : loding(w, h),
                    ),
                  ),
                  appbar(w),
                ],
              ),
            ),
    );
  }

  Widget successful(w, h) {
    return Center(
      child: Container(
        width: (w / 4) + 20,
        height: h / 4,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Thanks for your ordering  :D",
                style: TextStyle(
                    fontSize: windows_width_medium_size(w),
                    color: Color(0xFF424648)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/successful.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 80,
                height: 80,
              ),
              Text(
                '''
We have sent you a confirmation email.
Please check your mailbox.
                ''',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: windows_width_small_size(w),
                    color: Color(0xFF424648)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget loding(w, h) {
    return Center(
      child: Container(
        width: (w / 4) + 20,
        height: h / 4,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RotationTransition(
                alignment: Alignment.center,
                turns: animation,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/loding_icon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 60,
                  height: 60,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Loading…",
                style: TextStyle(color: Color(0xFF424648)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget appbar(w) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
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
            Text("Emorgan",
                style: TextStyle(color: Color(0xFF7A82A7), fontSize: 32))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
