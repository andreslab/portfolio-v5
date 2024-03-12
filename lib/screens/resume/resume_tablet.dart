import 'package:flutter/material.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/widgets.dart';

class ResumeTabletScreen extends StatelessWidget {
  const ResumeTabletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Profile(platform: Platform.tablet),
          About(platform: Platform.tablet),
          Services(platform: Platform.tablet),
          Experience(platform: Platform.tablet),
          Projects(platform: Platform.tablet),
          Contact(platform: Platform.tablet),
        ],
      ),
    );
  }
}
