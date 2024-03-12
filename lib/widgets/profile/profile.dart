import 'package:flutter/material.dart';
import 'package:porfolio/widgets/profile/desktop.dart';
import 'package:porfolio/widgets/profile/mobile.dart';
import 'package:porfolio/widgets/profile/tablet.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Profile extends StatelessWidget {
  final Platform platform;

  const Profile({
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
