import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'provider/banner.dart';
import 'provider/book_state.dart';
import 'screen/buzzy_product/buzzy_product_screen.dart';
import 'screen/home/home_screen.dart';
import 'screen/obi_product/obi_product_screen.dart';
import 'screen/order/order_shopping_code.dart';

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
        ChangeNotifierProvider.value(value: BannerStatus()),
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
          // home: HomeScreen()),
      home: Scaffold(body: OrderShoppingCode())),
    );
  }
}
