import 'package:flutter/material.dart';
import 'package:porfolio/screens/utils.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;
  bool _isSingleScreen = false;
  Platform _platform = Platform.desktop;
  bool _isDarkTheme = false;
  ScrollController _scrollControllerMain = ScrollController();

  final GlobalKey _profileKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

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

  ScrollController get scrollControllerMain {
    return _scrollControllerMain;
  }

  set scrollControllerMain(ScrollController value) {
    _scrollControllerMain = value;
    notifyListeners();
  }

  GlobalKey get profileKey {
    return _profileKey;
  }

  GlobalKey get aboutKey {
    return _aboutKey;
  }

  GlobalKey get servicesKey {
    return _servicesKey;
  }

  GlobalKey get experienceKey {
    return _experienceKey;
  }

  GlobalKey get projectsKey {
    return _projectsKey;
  }

  GlobalKey get contactKey {
    return _contactKey;
  }
}
