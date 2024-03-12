import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/contact/desktop.dart';
import 'package:porfolio/widgets/contact/mobile.dart';
import 'package:porfolio/widgets/contact/tablet.dart';

class Contact extends StatelessWidget {
  final Platform platform;

  const Contact({
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
