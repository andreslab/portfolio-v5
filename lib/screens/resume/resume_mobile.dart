import 'package:flutter/material.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/widgets.dart';

class ResumeMobileScreen extends StatelessWidget {
  const ResumeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Profile(platform: Platform.mobile),
          About(platform: Platform.mobile),
          Services(platform: Platform.mobile),
          Experience(platform: Platform.mobile),
          Projects(platform: Platform.mobile),
          Contact(platform: Platform.mobile),
        ],
      ),
    );
  }
}
