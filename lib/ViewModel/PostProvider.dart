import 'dart:convert';

import 'package:flutter/material.dart';
import '../model/model.dart';

class PostProvider with ChangeNotifier{


  bool isSwitched = false;
ThemeData themeData =lightmode;

  void toggleTheme() {
    if (themeData == lightmode)
    {
      themeData = Darkmode;
    }
    else
    {
      themeData = lightmode;
    }
    isSwitched = !isSwitched;
    notifyListeners();
  }
}