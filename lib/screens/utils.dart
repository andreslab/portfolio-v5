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
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
