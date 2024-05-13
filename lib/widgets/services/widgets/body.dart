import 'package:flutter/material.dart';
import 'package:porfolio/models/skill.dart';
import 'package:porfolio/providers/skill_provider.dart';
import 'package:porfolio/providers/ui_provider.dart';
import 'package:porfolio/widgets/widgets.dart';
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
    final skillProvider = Provider.of<SkillProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWithKey(key: uiProvider.servicesKey, title: 'Services'),
        SizedBox(
          height: 20,
        ),
        _buildPlatformWidget(uiProvider.pratform, skillProvider.skills),
      ],
    );
  }

  Widget _buildPlatformWidget(Platform platform, List<Skill> skills) {
    switch (platform) {
      case Platform.desktop:
        return Desktop(
          skills: skills,
        );
      case Platform.tablet:
        return Tablet(
          skills: skills,
        );
      case Platform.mobile:
        return Mobile(
          skills: skills,
        );
      default:
        return Desktop(
          skills: skills,
        );
    }
  }
}
