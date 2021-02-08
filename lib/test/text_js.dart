@JS()
library t;

import 'package:js/js.dart';

@JS()
external int Test();

class MyOwn {
  int get value => Test();
}