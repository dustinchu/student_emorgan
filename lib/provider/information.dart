import 'dart:io';

import 'package:flutter/material.dart';

class InformationStatus extends ChangeNotifier {
  String firstNameA = "";
  String lastNameA = "";
  String emailA = "";
  String phoneA = "";

  String firstNameB = "";
  String lastNameB = "";
  String emailB = "";
  String phoneB = "";

  String get getFirstNameA => firstNameA;
  String get getLastNameA => lastNameA;
  String get getEmailA => emailA;
  String get getPhoneA => phoneA;
  String get getFirstNameB => firstNameB;
  String get getLastNameB => lastNameB;
  String get getEmailB => emailB;
  String get getPhoneB => phoneB;

  void setHuman(String firstA, String lastA, String emailAddressA, String phoneNumberA,
      String firstB, String lastB, String emailAddressB, String phoneNumberB) {
    firstNameA = firstA;
    lastNameA = lastA;
    emailA = emailAddressA;
    phoneA = phoneNumberA;
    firstNameB = firstB;
    lastNameB = lastB;
    emailB = emailAddressB;
    phoneB = phoneNumberB;
    notifyListeners();
  }
}
