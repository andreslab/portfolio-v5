import 'package:flutter/material.dart';
import 'package:porfolio/screens/utils.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;
  bool _isSingleScreen = false;
  Platform _platform = Platform.desktop;
  bool _isDarkTheme = false;

  int get selectedMenuOpt {
    return _selectedMenuOpt;
  }

  set selectedMenuOpt(int index) {
    _selectedMenuOpt = index;
    notifyListeners();
  }

  bool get isSingleScreen {
    return _isSingleScreen;
  }

  set isSingleScreen(bool value) {
    _isSingleScreen = value;
    notifyListeners();
  }

  Platform get pratform {
    return _platform;
  }

  set platform(Platform value) {
    _platform = value;
    notifyListeners();
  }

  bool get isDarkTheme {
    return _isDarkTheme;
  }

  set isDarkTheme(bool value) {
    _isDarkTheme = value;
    notifyListeners();
  }
}
