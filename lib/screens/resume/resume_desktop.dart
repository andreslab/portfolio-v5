import 'package:flutter/material.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/widgets.dart';

class ResumeDesktopScreen extends StatelessWidget {
  const ResumeDesktopScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Profile(platform: Platform.desktop),
          About(platform: Platform.desktop),
          Services(platform: Platform.desktop),
          Experience(platform: Platform.desktop),
          Projects(platform: Platform.desktop),
          Contact(platform: Platform.desktop),
        ],
      ),
    );
  }
}
