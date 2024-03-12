import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/experience/desktop.dart';
import 'package:porfolio/widgets/experience/mobile.dart';
import 'package:porfolio/widgets/experience/tablet.dart';

class Experience extends StatelessWidget {
  final Platform platform;

  const Experience({
    super.key,
    required this.platform,
  });

  @override
  Widget build(BuildContext context) {
    switch (platform) {
      case Platform.desktop:
        return Desktop();
      case Platform.tablet:
        return Tablet();
      case Platform.mobile:
        return Mobile();
      default:
        return Desktop();
    }
  }
}
