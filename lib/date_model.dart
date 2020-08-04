import 'package:flutter/material.dart';

class DateModel extends ChangeNotifier {
  String idolText = '推し';
  void changeIdolText() {
    idolText = '尊い';
    notifyListeners();
  }
}
