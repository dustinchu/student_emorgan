import 'package:emorgan/screen/buy/buy_loding.dart';
import 'package:emorgan/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import 'provider/book_state.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
        ChangeNotifierProvider.value(value: BookStatus()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'buzzy – Emorgan情緒器官',
        initialRoute: "/",
        onGenerateRoute: Modular.generateRoute,
        navigatorKey: Modular.navigatorKey, // Here's the culprit
      //   home: ChangeNotifierProvider<BookStatus>(
      //     create: (context) => BookStatus(),
      //     child: Scaffold(body: HomeScreen()),
      //   ),
      // );
      home: Scaffold(body: HomeScreen())),
      // home: Scaffold(body: Buyloding())),
    );
  }
}
