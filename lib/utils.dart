import 'dart:html' as html;

void openUrl(String url) {
  html.window.open(url, 'new tab');
}

class SkillCategories {
  static const String mobile = "MOBILE";
  static const String frontend = "FRONTEND";
  static const String backend = "BACKEND";
}
