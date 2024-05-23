import 'package:flutter/material.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/widgets/projects/widgets/body.dart';
import 'package:provider/provider.dart';

class Projects extends StatelessWidget {
  final bool isfullScreen;
  const Projects({
    super.key,
    this.isfullScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    uiProvider.isSingleScreen = isfullScreen;
    if (isfullScreen) {
      return Scaffold(
        body: Body(),
      );
    } else {
      return Body();
    }
  }
}
