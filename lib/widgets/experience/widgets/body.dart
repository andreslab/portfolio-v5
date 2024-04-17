import 'package:flutter/material.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

import 'package:porfolio/widgets/experience/widgets/desktop.dart';
import 'package:porfolio/widgets/experience/widgets/tablet.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final instituteProvider = Provider.of<InstituteProvider>(context);
    final institutes = instituteProvider.institutes;

    final jobProvider = Provider.of<JobProvider>(context);
    final jobs = jobProvider.jobs;

    final uiProvider = Provider.of<UiProvider>(context);
    switch (uiProvider.pratform) {
      case Platform.desktop:
        return Desktop(
          institutes: institutes,
          jobs: jobs,
        );
      case Platform.tablet:
        return Tablet(
          institutes: institutes,
          jobs: jobs,
        );
      case Platform.mobile:
        return Tablet(
          institutes: institutes,
          jobs: jobs,
        );
      default:
        return Desktop(
          institutes: institutes,
          jobs: jobs,
        );
    }
  }
}
