import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;
import 'package:pointer_interceptor/pointer_interceptor.dart';

class HomeProduct360Html extends StatefulWidget {
  HomeProduct360Html({Key key, this.valueID, this.path}) : super(key: key);
  final String valueID;
  final String path;
  @override
  _HomeProduct360HtmlState createState() => _HomeProduct360HtmlState();
}

class _HomeProduct360HtmlState extends State<HomeProduct360Html> {
  bool status = false;
  @override
  void initState() { 
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      widget.valueID,
      (int id) => html.IFrameElement()
        ..width = MediaQuery.of(context).size.width.toString()
        ..height = MediaQuery.of(context).size.height.toString()
        // ..src = path
        ..src = "https://eloquent-engelbart-9e449d.netlify.app"
        ..style.overflow = "hidden"
        ..allow = "autoplay"
        ..allowFullscreen = true
        ..style.border = 'none',
    );

    return SizedBox(
        // child: EasyWebView(

        //   src: path,
        //   onLoaded: () {
        //     print("on load");
        //   },
        // ),
        // )
        child: HtmlElementView(
      viewType: widget.valueID,
    ));
  }
}
