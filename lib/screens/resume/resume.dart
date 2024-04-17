import 'package:flutter/material.dart';
import 'package:porfolio/providers/ui_provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Profile(),
          About(),
          Services(),
          Experience(),
          Projects(),
          Contact(),
        ],
      ),
    );
  }
}
