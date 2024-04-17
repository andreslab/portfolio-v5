import 'package:flutter/material.dart';
import 'package:porfolio/providers/ui_provider.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

import 'package:porfolio/widgets/services/widgets/desktop.dart';
import 'package:porfolio/widgets/services/widgets/mobile.dart';
import 'package:porfolio/widgets/services/widgets/tablet.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    switch (uiProvider.pratform) {
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
