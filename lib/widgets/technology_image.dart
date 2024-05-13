import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Size {
  SMALL,
  MEDIUM,
  LARGE,
}

class TechnologyImage extends StatelessWidget {
  final Size size;
  final String title;
  final String urlIcon;
  final bool isDarkTheme;

  const TechnologyImage(
      {super.key,
      this.size = Size.MEDIUM,
      required this.title,
      required this.urlIcon,
      this.isDarkTheme = false});

  double getSizeValue(Size size) {
    switch (size) {
      case Size.SMALL:
        return 30.0; // Adjust the size values as needed
      case Size.MEDIUM:
        return 60.0;
      case Size.LARGE:
        return 90.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    double imageSize = getSizeValue(size);
    return Container(
      padding: EdgeInsets.all(5),
      width: imageSize * 1.1,
      height: imageSize * 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Center(
        child: SizedBox(
            width: imageSize,
            height: imageSize,
            child: Image.network('$urlIcon', fit: BoxFit.fill)),
        // child: Column(
        //   children: [
        //     SizedBox(
        //         width: imageSize,
        //         height: imageSize,
        //         child: Image.network('$urlIcon', fit: BoxFit.fill)),
        //     SizedBox(
        //       height: 5,
        //     ),
        //     Text(
        //       '$title',
        //       style: TextStyle(fontSize: 15.0, color: Colors.black),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
