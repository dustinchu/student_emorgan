import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeVidio extends StatefulWidget {
  HomeVidio({Key key}) : super(key: key);

  @override
  _HomeVidioState createState() => _HomeVidioState();
}

// https://vod-progressive.akamaized.net/exp=1614157174~acl=%2A%2F617711126.mp4%2A~hmac=f43820930d5cc210055084405c3684d7a2d3e21a48c8ed870ae4f837e1584121/vimeo-prod-skyfire-std-us/01/2418/7/187094433/617711126.mp4
class _HomeVidioState extends State<HomeVidio> {
  TargetPlatform _platform = TargetPlatform.android;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://vod-progressive.akamaized.net/exp=1615304520~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4277%2F20%2F521389153%2F2434881143.mp4~hmac=b6e5ec1a894eb0dcad4bfb0e01d50130520daafbe66e3a40d3d601c0fc50e026/vimeo-prod-skyfire-std-us/01/4277/20/521389153/2434881143.mp4');
    await _videoPlayerController1.initialize();
    _videoPlayerController2 = VideoPlayerController.network(
        'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4');
    await _videoPlayerController2.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 1500;
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/big_banner_backroung.png"),
              fit: BoxFit.cover,
            ),
          ),
      child: Center(
        child: _chewieController != null &&
                _chewieController.videoPlayerController.value.initialized
            ? Chewie(
                controller: _chewieController,
              )
            // : Container()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // CircularProgressIndicator(),
                  // SizedBox(height: 20),
                  Text('Loading'),
                ],
              ),
      ),
    );
  }
}
