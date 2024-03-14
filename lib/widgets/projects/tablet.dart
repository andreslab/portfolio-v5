import 'package:flutter/material.dart';
import 'package:porfolio/widgets/projects/widgets/body.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Tablet extends StatelessWidget {
  const Tablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Body(
      platform: Platform.tablet,
    );
  }
}
