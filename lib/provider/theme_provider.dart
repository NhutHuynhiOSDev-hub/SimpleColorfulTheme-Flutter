import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  Color mainColor = Colors.deepOrange;

  void changeThemeColor(Color color) {
    this.mainColor = color;
    notifyListeners();
  }
}