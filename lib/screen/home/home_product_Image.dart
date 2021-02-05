import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class ImagePage extends StatefulWidget {
  ImagePage({Key key, this.finderName}) : super(key: key);

  final String finderName;

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  List<ImageProvider> imageList = List<ImageProvider>();
  bool autoRotate = false;
  int rotationCount = 2;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  Duration frameChangeDuration = Duration(microseconds: 100);
  bool imagePrecached = false;

  @override
  void initState() {
    //* To load images from assets after first frame build up.
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (imagePrecached == true)
        ? Container(
            width: 500,
            height: 500,
            child: ImageView360(
              key: UniqueKey(),
              imageList: imageList,
              autoRotate: autoRotate,
              rotationCount: rotationCount,
              rotationDirection: RotationDirection.anticlockwise,
              frameChangeDuration: Duration(microseconds: 100),
              swipeSensitivity: swipeSensitivity,
              allowSwipeToRotate: allowSwipeToRotate,
              onImageIndexChanged: (currentImageIndex) {
                print("currentImageIndex: $currentImageIndex");
              },
            ),
          )
        : Text(" ");
  }

  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 60; i++) {
      imageList.add(AssetImage('assets/${widget.finderName}/$i.png'));
      //* To precache images so that when required they are loaded faster.
      await precacheImage(
          AssetImage('assets/${widget.finderName}/$i.png'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }
}
