import 'package:flutter/material.dart';
import 'package:porfolio/providers/ui_provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:provider/provider.dart';

class ResponseLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponseLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 500) {
        uiProvider.platform = Platform.mobile;
        return mobileScaffold;
      } else if (constrains.maxWidth < 1100) {
        uiProvider.platform = Platform.tablet;
        return tabletScaffold;
      } else {
        uiProvider.platform = Platform.desktop;
        return desktopScaffold;
      }
    });
  }
}
