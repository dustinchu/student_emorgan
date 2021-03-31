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
  Duration videoLength;
  Duration videoPosition;
  double volume = 0.5;

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
          _controller.play();
        });
      });
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
          if (_controller.value.initialized) ...[
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            VideoProgressIndicator(
              _controller,
              allowScrubbing: true,
              padding: EdgeInsets.all(10),
            ),
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
          ]
        ],
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
