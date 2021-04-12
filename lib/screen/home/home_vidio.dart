import 'dart:async';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class HomeVidio extends StatefulWidget {
  HomeVidio({Key key}) : super(key: key);

  @override
  _HomeVidioState createState() => _HomeVidioState();
}

// https://vod-progressive.akamaized.net/exp=1614157174~acl=%2A%2F617711126.mp4%2A~hmac=f43820930d5cc210055084405c3684d7a2d3e21a48c8ed870ae4f837e1584121/vimeo-prod-skyfire-std-us/01/2418/7/187094433/617711126.mp4
class _HomeVidioState extends State<HomeVidio> {
  VideoPlayerController _controller;
  Duration videoLength;
  Duration videoPosition;
  double volume = 0.5;
  bool isTouch = false;
  bool first = true;
  bool isShow = true;
  Timer timer;
  double x, oldX, y, oldY = 0.0;
  List<bool> isShowTime = [true, true, true];
  int listCount = 0;
  String status = "";
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/stockcalendar-449ba.appspot.com/o/2434881143.mp4?alt=media&token=d978b040-0d94-40cb-83b2-163a78bc0931')
      ..addListener(() => setState(() {
            videoPosition = _controller.value.position;
          }))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          videoLength = _controller.value.duration;
          _controller.setLooping(true);
          // _controller.play();
          _controller.pause();
        });
      });

    //每秒判斷如果xy都一樣的話按鈕不顯示
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (oldX == x) {
        // print("oldx===x");
        isShowTime[listCount] = false;
        if (listCount < 2) {
          listCount += 1;
        }
        // print("conut===$listCount");
        // print("isShowTime$listCount===${isShowTime[listCount]}");
      } else {
        // print("不一樣");
        isShowTime = [true, true, true];
        listCount = 0;
      }

      oldX = x;
      oldY = y;
      // print("看一下${!isShowTime[0] && !isShowTime[1] && !isShowTime[2]}");
      if (status != "pause") {
        print(
            "看一下${!isShowTime[0] && !isShowTime[1] && !isShowTime[2]}  status==$status");
        if (!isShowTime[0] && !isShowTime[1] && !isShowTime[2]) {
          setState(() {
            isShow = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  String convertToMinutesSeconds(Duration duration) {
    final parsedMinutes = duration.inMinutes % 60;

    final minutes =
        parsedMinutes < 10 ? '0$parsedMinutes' : parsedMinutes.toString();

    final parsedSeconds = duration.inSeconds % 60;

    final seconds =
        parsedSeconds < 10 ? '0$parsedSeconds' : parsedSeconds.toString();

    return '$minutes:$seconds';
  }

  IconData animatedVolumeIcon(double volume) {
    if (volume == 0)
      return Icons.volume_mute;
    else if (volume < 0.5)
      return Icons.volume_down;
    else
      return Icons.volume_up;
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 1500;
    double nowH = MediaQuery.of(context).size.height;

    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/big_banner_backroung.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: MouseRegion(
        onHover: (details) async {
          setState(() {
            x = details.position.dx;
            y = details.position.dy;
            isShow = true;
          });
        },
        child: Stack(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ],
              ),
              // child: Column(
              // children: [
              // if (_controller.value.initialized) ...[
              //   AspectRatio(
              //     aspectRatio: _controller.value.aspectRatio,
              //     child: VideoPlayer(_controller),
              //   ),
              // VideoProgressIndicator(
              //   _controller,
              //   allowScrubbing: true,
              //   padding: EdgeInsets.all(10),
              // ),
              // Row(
              //   children: <Widget>[
              //     IconButton(
              //       icon: Icon(
              //         _controller.value.isPlaying
              //             ? Icons.pause
              //             : Icons.play_arrow,
              //       ),
              //       onPressed: () => setState(
              //         () {
              //           _controller.value.isPlaying
              //               ? _controller.pause()
              //               : _controller.play();
              //         },
              //       ),
              //     ),
              //     Text(
              //         '${convertToMinutesSeconds(videoPosition)} / ${convertToMinutesSeconds(videoLength)}'),
              //     SizedBox(width: 10),
              //     Icon(animatedVolumeIcon(volume)),
              //     Slider(
              //         value: volume,
              //         min: 0,
              //         max: 1,
              //         onChanged: (changedVolume) {
              //           setState(() {
              //             volume = changedVolume;
              //             _controller.setVolume(changedVolume);
              //           });
              //         }),
              //     Spacer(),
              //     IconButton(
              //         icon: Icon(Icons.loop,
              //             color: _controller.value.isLooping
              //                 ? Colors.green
              //                 : Colors.black),
              //         onPressed: () {
              //           _controller.setLooping(!_controller.value.isLooping);
              //         })
              //   ],
              // )
              // ]
              // ],
              // ),
            ),
            // Align(
            //     alignment: Alignment.bottomCenter,
            //   child: InkWell(
            //     onTap: () {
            //       setState(() {
            //         first = false;
            //         isShow = false;
            //       });
            //       _controller.play();
            //     },
            //     onHover: (touch) {
            //       setState(() {
            //         isTouch = touch;
            //       });
            //     },
            //     child: Container(
            //       margin: EdgeInsets.only(bottom: 500),
            //       decoration: new BoxDecoration(
            //         border:
            //             new Border.all(color: Colors.white, width: 2), // 边色与边宽度
            //         color: isTouch ? Colors.white : Colors.transparent, // 底色
            //         borderRadius: new BorderRadius.circular((50.0)), // 圆角度
            //       ),
            //       child: Padding(
            //         padding:
            //             const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            //         child: Text(
            //           "The New Way to Feel Emotions ",
            //           style: TextStyle(
            //               color: isTouch ? Colors.black54 : Colors.white,
            //               fontSize: 30),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            first
                ? Align(
                    alignment: Alignment.topCenter,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          first = false;
                          isShow = false;
                          status = "first";
                        });
                        _controller.play();
                      },
                      onHover: (touch) {
                        setState(() {
                          isTouch = touch;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: nowH / 2),
                        decoration: new BoxDecoration(
                          border: new Border.all(
                              color: Colors.white, width: 2), // 边色与边宽度
                          color:
                              isTouch ? Colors.white : Colors.transparent, // 底色
                          borderRadius:
                              new BorderRadius.circular((50.0)), // 圆角度
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Text(
                            "The New Way to Feel Emotions ",
                            style: TextStyle(
                                color: isTouch ? Colors.black54 : Colors.white,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  )
                : isShow
                    ? DelayedDisplay(
                        delay: Duration(seconds: 1),
                        slidingBeginOffset: const Offset(0.0, 0.0),
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: _controller.value.isPlaying
                                ? InkWell(
                                    onTap: () {
                                      _controller.pause();
                                      isShow = false;
                                      first = false;
                                      status = "pause";
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      margin: EdgeInsets.only(top: nowH / 2),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/video_icon_pause.png"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                  )
                                : DelayedDisplay(
                                    delay: Duration(seconds: 1),
                                    slidingBeginOffset: const Offset(0.0, 0.0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: InkWell(
                                        //第二次出現播放的按鈕
                                        onTap: () {
                                          isShow = false;
                                          status = "play";
                                          _controller.play();
                                        },
                                        child: Container(
                                          height: 100,
                                          width: 100,
                                          margin:
                                              EdgeInsets.only(top: nowH / 2),
                                          // margin: EdgeInsets.only(bottom: 1000),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/video_play_icon.png"),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                      )
                    : Container(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: nowH - 100),
                child: Column(
                  children: [
                    isShow
                        ? Text(
                            "Become  EMO",
                            style: GoogleFonts.montserrat(
                              textStyle:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                          )
                        : Container(),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/video_icon_down.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // child: Column(
      //   children: [
      //     // VideoItems(
      //     //   videoPlayerController: VideoPlayerController.network(
      //     //       'https://vod-progressive.akamaized.net/exp=1615534196~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4277%2F20%2F521389153%2F2434881143.mp4~hmac=2d7f0eb730aee8e8f4990ae9808481cd59baaa3d4f019684c9b5aea03d9025de/vimeo-prod-skyfire-std-us/01/4277/20/521389153/2434881143.mp4'),
      //     //   looping: true,
      //     //   autoplay: true,
      //     // ),
      //   ],
      // ),
    );
  }
}
