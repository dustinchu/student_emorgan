import 'dart:io';

import 'package:flutter/material.dart';

class AccountStatus extends ChangeNotifier {
  String account1Name;
  String account2Name;
  String account1ImangePath;
  String account2ImangePath;

  String get getAccount1Name => account1Name;
  String get getAccount2Name => account2Name;
  String get getAccount1ImangePath => account1ImangePath;
  String get getAccount2ImangePath => account2ImangePath;

  void setAccountName1(String name,String path) {
    account1Name = name;
     account1ImangePath = path;
    notifyListeners();
  }

  void setAccountName2(String name,String path) {
    account2Name = name;
    account2ImangePath = path;
    notifyListeners();
  }

  void setbuzzy(String name,String path) {
      account1Name = name;
    account1ImangePath = path;
    account2Name = name;
    account2ImangePath = path;
    notifyListeners();
  }


}
