import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 49, 87, 73);
  static const Color secondary = Color.fromARGB(255, 79, 49, 87);
  static const Color third = Color.fromARGB(255, 153, 172, 165);
  static const Color fourth = Color.fromARGB(255, 87, 76, 49);
  static const Color fifth = Color.fromARGB(255, 214, 198, 159);
  static const Color sixth = Color.fromARGB(83, 204, 159, 214);

  static const Color background = Color.fromARGB(255, 250, 250, 254);
  static const Color iconPrimary =
      Color.fromRGBO(158, 158, 158, 1); // Grey shade 500
  static const Color iconSecondary =
      Color.fromRGBO(176, 176, 176, 1); // Grey shade 300

  static const Color chartToday = primary;
  static const Color chartLastWeek = Color.fromARGB(255, 0, 101, 123);
  static const Color bold = Colors.black;
  static const Color normal = Colors.black87;
  static const Color light = Colors.black45;
  static const Color backgroundRecord = Color.fromARGB(250, 220, 220, 220);
  static const Color backgroundNavigation = Color.fromARGB(250, 240, 240, 240);
  static const Color healtyRecord = Color.fromARGB(255, 201, 255, 200);
  static const Color regularRecord = Color.fromARGB(255, 244, 245, 179);
  static const Color dangerRecord = Color.fromARGB(255, 231, 145, 145);
  static const Color heart = Color.fromARGB(255, 241, 23, 23);
  static const Color unselectedIcon = Colors.black45;

  static const double h1 = 80;
  static const double h2 = 50;
  static const double h3 = 40;
  static const double title = 20;
  static const double subtitle = 18;
  static const double body = 14;

  static final TextStyle buttonLarge =
      TextStyle(fontSize: 20, color: Colors.white);

  static final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: background,
    appBarTheme: const AppBarTheme(
        color: Colors.white, foregroundColor: light, elevation: 0),
    // primaryColor: normal,
    drawerTheme: DrawerThemeData(backgroundColor: background, elevation: 2),
    textTheme: TextTheme(
      titleSmall: TextStyle(color: Colors.black),
      titleLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(primary), // Set background color
      foregroundColor:
          MaterialStateProperty.all<Color>(Colors.white), // Set text color
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.all(16.0)), // Set padding
      shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),

      // Set button shape
    )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppTheme.backgroundNavigation,
        selectedIconTheme: IconThemeData(color: primary),
        unselectedIconTheme: IconThemeData(color: unselectedIcon),
        type: BottomNavigationBarType.fixed),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: background, elevation: 0),
    inputDecorationTheme: InputDecorationTheme(
      // Customize the text style
      hintStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(color: Colors.black),
      border: OutlineInputBorder(
        borderSide:
            BorderSide(color: primary), // Change border color when focused
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: primary), // Change border color when focused
      ),
      // Add other input decoration styles as needed
    ),
  );
}
