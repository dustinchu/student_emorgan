import 'dart:io';

import 'package:flutter/material.dart';

class BookStatus extends ChangeNotifier {
  bool monStatus = false;
  bool tueStatus = false;
  bool wedStatus = false;
  bool thuStatus = false;
  bool friStatus = false;
  bool satStatus = false;
  int clickIndex=99;
  bool get getMonStatus => monStatus;
  bool get getTueStatus => tueStatus;
  bool get getWedStatus => wedStatus;
  bool get getThuStatus => thuStatus;
  bool get getFriStatus => friStatus;
  bool get getSatStatus => satStatus;
  int get getClickItem => clickIndex;

  void setClickItem(String value) {
   
    switch (value) {
        case "10:00":
        clickIndex = 0;
        break;
      case "11:00":
        clickIndex = 1;
        break;
      case "12:00":
        clickIndex = 2;
        break;
      case "13:00":
        clickIndex = 3;
        break;
      case "14:00":
        clickIndex = 4;
        break;
      case "15:00":
        clickIndex = 5;
        break;
      case "16:00":
        clickIndex = 6;
        break;
      case "17:00":
        clickIndex = 7;
        break;
      default:
    }
    notifyListeners();
    print("provider==$value");
  }

  void setMonStatus(bool status) {
    monStatus = status;
    notifyListeners();
  }

  void setTueStatus(bool status) {
    tueStatus = status;
    notifyListeners();
  }

  void setWedStatus(bool status) {
    wedStatus = status;
    notifyListeners();
  }

  void setThiStatus(bool status) {
    thuStatus = status;
    notifyListeners();
  }

  void setFriStatus(bool status) {
    friStatus = status;
    notifyListeners();
  }

  void setSatStatus(bool status) {
    satStatus = status;
    notifyListeners();
  }
}
