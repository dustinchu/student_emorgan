import 'dart:io';

import 'package:flutter/material.dart';

class MenuStatus extends ChangeNotifier {
  int pageIndex;

  int get getPageIndex => pageIndex;

  void setPageIndex(int index) {
    pageIndex = index;
    notifyListeners();
  }
}
