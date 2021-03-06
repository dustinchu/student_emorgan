import 'package:emorgan/screen/buy/buy_loding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'provider/account.dart';
import 'provider/banner.dart';
import 'provider/book_state.dart';
import 'provider/menu.dart';
import 'screen/about/about_animator_screen.dart';
import 'screen/about/about_dets_page.dart';
import 'screen/buzzy_product/buzzy_product_screen.dart';
import 'screen/home/home_booking.dart';
import 'screen/home/home_screen.dart';
import 'screen/obi_product/obi_product_screen.dart';
import 'screen/order/order_account.dart';
import 'screen/order/order_information.dart';
import 'screen/order/order_patch.dart';
import 'screen/order/order_shopping_code.dart';
import 'screen/shali_product/shali_product_screen.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: MenuStatus()),
        ChangeNotifierProvider.value(value: BookStatus()),
        ChangeNotifierProvider.value(value: BannerStatus()),
        ChangeNotifierProvider.value(value: AccountStatus()),
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
          home: HomeScreen(pageAnimate: 0,pageIndex: 0,)),
          // home: ShaliProductScreen()),
      // home: OrderImformation(
      //   rightImagePath: "assets/info_buzzy_and_buzzy_right.png",
      //   leftImagePath: "assets/info_buzzy_and_buzzy_right.png",
      // )),
    );
  }
}
