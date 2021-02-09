import 'dart:io';

import 'package:flutter/material.dart';

class BannerStatus extends ChangeNotifier {
  bool banner1 = false;
  bool banner2 = false;
  bool banner3 = false;

  bool get getBanner1Status => banner1;
  bool get getBanner2Status => banner2;
  bool get getBanner3Status => banner3;

  void setBanner1Status(bool status) {
    banner1 = status;
    notifyListeners();
  }

  void setBanner2Status(bool status) {
    banner2 = status;
    notifyListeners();
  }

  void setBanner3Status(bool status) {
    banner3 = status;
    notifyListeners();
  }

  void showBanner1() {
    banner1 = true;
    banner2 = false;
    banner3 = false;
    notifyListeners();
  }

  void showBanner2() {
    banner1 = false;
    banner2 = true;
    banner3 = false;
    notifyListeners();
  }

  void showBanner3() {
    banner1 = false;
    banner2 = false;
    banner3 = true;
    notifyListeners();
  }
}
