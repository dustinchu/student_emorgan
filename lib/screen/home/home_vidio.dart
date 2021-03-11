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
VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://vod-progressive.akamaized.net/exp=1615458047~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4277%2F20%2F521389153%2F2434881143.mp4~hmac=9c8153d26eacbb83f1fd6fab376eb5e108af9bcd8b1d47c0ceb80d57ef73eeac/vimeo-prod-skyfire-std-us/01/4277/20/521389153/2434881143.mp4',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  _controller.play();
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
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
        child: Column(
          children: [
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the video.
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(_controller),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
    );
  }
}
