import 'package:porfolio/models/project.dart';

class Constants {
  static const double DRAWER_WIDTH = 200;
  static const double MARGIN_BODY = 30;
}

enum Platform {
  mobile,
  tablet,
  desktop,
}

class ScreenArguments {
  final Project project;
  ScreenArguments(this.project);
}
