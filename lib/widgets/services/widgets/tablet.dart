import 'package:flutter/material.dart';
import 'package:porfolio/models/skill.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/utils.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:porfolio/screens/utils.dart';

class Tablet extends StatelessWidget {
  final List<Skill> skills;
  const Tablet({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    const height = 500.0;
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ServiceCard(
                  title: "Web",
                  platform: Platform.tablet,
                  backgroundColor: AppTheme.fifth,
                  isDarkTheme: false,
                  skills: skills
                      .where((e) => e.category == SkillCategories.frontend)
                      .toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                ServiceCard(
                  title: "Mobile",
                  platform: Platform.tablet,
                  backgroundColor: AppTheme.primary,
                  isDarkTheme: true,
                  skills: skills
                      .where((e) => e.category == SkillCategories.mobile)
                      .toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                ServiceCard(
                  title: "Backend",
                  platform: Platform.tablet,
                  backgroundColor: AppTheme.sixth,
                  isDarkTheme: false,
                  skills: skills
                      .where((e) => e.category == SkillCategories.backend)
                      .toList(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            'Looking for a custom job? Click here to contact me!',
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
            maxLines: 3,
          )),
          Spacer()
        ],
      ),
    );
  }
}
