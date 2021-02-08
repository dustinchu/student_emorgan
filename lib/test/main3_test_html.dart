import 'dart:html';
import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

String valueID = "AA";
String path = "assets/obi/obi.150.html";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      valueID,
      (int id) => html.IFrameElement()
        ..width = MediaQuery.of(context).size.width.toString()
        ..height = MediaQuery.of(context).size.height.toString()
        // ..src = path
        ..src = path
        ..style.overflow = "hidden"
        ..allow = "autoplay"
        ..allowFullscreen = true
        ..style.border = 'none',
    );

    return Scaffold(
        body: Stack(
      children: <Widget>[
        ListView(
          children: [
            PointerInterceptor(
              child: Container(
                height: 500,
                width: 500,
                child: Center(
                  child: Text("123123"),
                ),
              ),
            ),
            Container(
              height: 500,
              width: 500,
              child: Center(
                child: Text("123123"),
              ),
            ),
            Container(
              height: 500,
              width: 500,
              child: Center(
                child: Text("123123"),
              ),
            ),
            Container(
              height: 500,
              width: 500,
              child: Center(
                child: Text("123123"),
              ),
            ),
            Container(
              height: 500,
              width: 500,
              child: Center(
                child: Text("123123"),
              ),
            )
          ],
        ),
       // *** Must come before the rest...
      ],
    ));
  }
}

class HtmlWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: 'someViewType');
  }
}
