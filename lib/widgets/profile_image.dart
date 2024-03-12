import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';

enum Size {
  SMALL,
  MEDIUM,
  LARGE,
}

class ProfileImage extends StatelessWidget {
  final Size size;

  const ProfileImage({super.key, required this.size});

  double getSizeValue(Size size) {
    switch (size) {
      case Size.SMALL:
        return 50.0; // Adjust the size values as needed
      case Size.MEDIUM:
        return 100.0;
      case Size.LARGE:
        return 150.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    double imageSize = getSizeValue(size);
    return ClipOval(
      child: Image.asset(
        "images/me.jpg",
        height: imageSize,
        width: imageSize,
        fit: BoxFit.cover,
      ),
    );
  }
}
