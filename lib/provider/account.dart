import 'dart:io';

import 'package:flutter/material.dart';

class AccountStatus extends ChangeNotifier {
  String account1Name;
  String account2Name;
  String account1ImangePath;
  String account2ImangePath;
  String accountOrderName1;
  String accountOrderName2;

  // String accountWhiteImagePath1;
  // String accountWhiteImagePath2;

  String get getAccount1Name => account1Name;
  String get getAccount2Name => account2Name;
  String get getAccount1ImangePath => account1ImangePath;
  String get getAccount2ImangePath => account2ImangePath;
  String get getAccountOrderName1 => accountOrderName1;
  String get getAccountOrderName2 => accountOrderName2;

  // String get getAccountWhiteImagePath1 => accountWhiteImagePath1;
  // String get getAccountWhiteImagePath2 => accountWhiteImagePath2;

  // void setAccountWhiteImagePath1(String imagePath) {
  //   accountWhiteImagePath1 = imagePath;
  //   notifyListeners();
  // }

  // void setAccountWhiteImagePath2(String imagePath) {
  //   accountWhiteImagePath2 = imagePath;
  //   notifyListeners();
  // }

  void setAccountName1(String name, String path, String orderName) {
    account1Name = name;
    account1ImangePath = path;
    accountOrderName1 = orderName;
    notifyListeners();
  }

  void setAccountName2(String name, String path, String orderName) {
    account2Name = name;
    account2ImangePath = path;
    accountOrderName2 = orderName;
    notifyListeners();
  }

  void setbuzzy(String name, String path, String orderName) {
    account1Name = name;
    account1ImangePath = path;
    account2Name = name;
    account2ImangePath = path;
    accountOrderName1 = orderName;
    accountOrderName2 = orderName;

    notifyListeners();
  }
}
