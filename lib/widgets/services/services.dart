import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/services/desktop.dart';
import 'package:porfolio/widgets/services/mobile.dart';
import 'package:porfolio/widgets/services/tablet.dart';

class Services extends StatelessWidget {
  final Platform platform;

  const Services({
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
