import 'package:flutter/material.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

import 'package:porfolio/widgets/about/widgets/desktop.dart';
import 'package:porfolio/widgets/about/widgets/mobile.dart';
import 'package:porfolio/widgets/about/widgets/tablet.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final personalProvider = Provider.of<ProfileProvider>(context);
    final personal = personalProvider.personal;
    final uiProvider = Provider.of<UiProvider>(context);
    switch (uiProvider.pratform) {
      case Platform.desktop:
        return Desktop(
          personalData: personal,
        );
      case Platform.tablet:
        return Tablet(
          personalData: personal,
        );
      case Platform.mobile:
        return Mobile(
          personalData: personal,
        );
      default:
        return Desktop(
          personalData: personal,
        );
    }
  }
}
