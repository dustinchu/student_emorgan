import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'video_items.dart';

class HomeVidio extends StatefulWidget {
  HomeVidio({Key key}) : super(key: key);

  @override
  _HomeVidioState createState() => _HomeVidioState();
}

// https://vod-progressive.akamaized.net/exp=1614157174~acl=%2A%2F617711126.mp4%2A~hmac=f43820930d5cc210055084405c3684d7a2d3e21a48c8ed870ae4f837e1584121/vimeo-prod-skyfire-std-us/01/2418/7/187094433/617711126.mp4
class _HomeVidioState extends State<HomeVidio> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://vod-progressive.akamaized.net/exp=1615534196~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4277%2F20%2F521389153%2F2434881143.mp4~hmac=2d7f0eb730aee8e8f4990ae9808481cd59baaa3d4f019684c9b5aea03d9025de/vimeo-prod-skyfire-std-us/01/4277/20/521389153/2434881143.mp4'),
            looping: true,
            autoplay: true,
          ),
        ],
      ),
    );
  }
}
