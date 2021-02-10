import 'package:animate_do/animate_do.dart';
import 'package:emorgan/common/sendEmail.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'main2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = "Show up Demo";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestUIForMail(),
    );
  }
}

class TestUIForMail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Mail'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('This is test mail form'),
                    ),
                    RaisedButton(
                      onPressed: () async {
                        String request = await sendEmail(
                            "title", "love2121103@gmail.com", "msg");
                        print("request==$request");
                      },
                      child: Text('Send'),
                    )
                  ],
                ),
                elevation: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
