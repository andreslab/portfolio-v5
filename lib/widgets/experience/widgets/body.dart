import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Body extends StatelessWidget {
  final Platform platform;

  const Body({
    super.key,
    required this.platform,
  });

  @override
  Widget build(BuildContext context) {
    final instituteProvider = Provider.of<InstituteProvider>(context);
    final institutes = instituteProvider.institutes;

    final jobProvider = Provider.of<JobProvider>(context);
    final jobs = jobProvider.jobs;

    switch (platform) {
      case Platform.desktop:
        return DesktopContainer(
          institutes: institutes,
          jobs: jobs,
        );
      case Platform.tablet:
        return TabletContainer(
          institutes: institutes,
          jobs: jobs,
        );
      case Platform.mobile:
        return TabletContainer(
          institutes: institutes,
          jobs: jobs,
        );
      default:
        return DesktopContainer(
          institutes: institutes,
          jobs: jobs,
        );
    }
  }
}

class DesktopContainer extends StatelessWidget {
  final Institute institutes;
  final Job jobs;
  const DesktopContainer({
    super.key,
    required this.institutes,
    required this.jobs,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width - Constants.DRAWER_WIDTH;
    final height = size.height * 0.5;
    return Container(
      width: width,
      height: height,
      // decoration: BoxDecoration(color: AppTheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Experience (+7 years)',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: width * 0.45,
                    child: ExperienceCard(
                      type: Type.JOB,
                      items: jobs.data
                          .map((e) => ItemModel(
                              period: '2024',
                              title: e.attributes.company,
                              subtitle: e.attributes.description))
                          .toList(),
                    )),
                Spacer(),
                SizedBox(
                    width: width * 0.45,
                    child: ExperienceCard(
                      type: Type.ACADEMYC,
                      items: institutes.data
                          .map((e) => ItemModel(
                              period: '2024',
                              title: e.attributes.name,
                              subtitle: e.attributes.career))
                          .toList(),
                    )),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class TabletContainer extends StatelessWidget {
  final Institute institutes;
  final Job jobs;
  const TabletContainer({
    super.key,
    required this.institutes,
    required this.jobs,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Experience (+7 years)',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: ExperienceCard(
              type: Type.JOB,
              items: jobs.data
                  .map((e) => ItemModel(
                      period: '2024',
                      title: e.attributes.company,
                      subtitle: e.attributes.description))
                  .toList(),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: ExperienceCard(
              type: Type.ACADEMYC,
              items: institutes.data
                  .map((e) => ItemModel(
                      period: '2024',
                      title: e.attributes.name,
                      subtitle: e.attributes.career))
                  .toList(),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
