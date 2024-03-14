import 'package:flutter/material.dart';
import 'package:porfolio/widgets/experience/widgets/body.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Body(
      platform: Platform.mobile,
    );
  }
}
