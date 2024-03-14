import 'package:flutter/material.dart';
import 'package:porfolio/widgets/experience/widgets/body.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

import '../../theme/app_theme.dart';

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Body(
      platform: Platform.desktop,
    );
  }
}
