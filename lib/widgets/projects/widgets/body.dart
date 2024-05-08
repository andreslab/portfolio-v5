import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

import 'package:porfolio/widgets/projects/widgets/desktop.dart';
import 'package:porfolio/widgets/projects/widgets/mobile.dart';
import 'package:porfolio/widgets/projects/widgets/tablet.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final projectProvider = Provider.of<ProjectProvider>(context);
    final projects = projectProvider.projects;
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final categories = categoryProvider.categories;
    final uiProvider = Provider.of<UiProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWithKey(key: uiProvider.projectsKey, title: 'Projects'),
        SizedBox(
          height: 20,
        ),
        _buildPlatformWidget(uiProvider.pratform, projects, categories),
      ],
    );
  }

  Widget _buildPlatformWidget(
      Platform platform, List<Project> projects, List<Category> categories) {
    switch (platform) {
      case Platform.desktop:
        return Desktop(
          projects: projects,
          categories: categories,
        );
      case Platform.tablet:
        return Tablet(
          projects: projects,
          categories: categories,
        );
      case Platform.mobile:
        return Mobile(
          projects: projects,
          categories: categories,
        );
      default:
        return Desktop(
          projects: projects,
          categories: categories,
        );
    }
  }
}
