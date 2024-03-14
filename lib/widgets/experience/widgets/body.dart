import 'package:flutter/material.dart';
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
    switch (platform) {
      case Platform.desktop:
        return DesktopContainer();
      case Platform.tablet:
        return TabletContainer();
      case Platform.mobile:
        return TabletContainer();
      default:
        return DesktopContainer();
    }
  }
}

class DesktopContainer extends StatelessWidget {
  const DesktopContainer({
    super.key,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: width * 0.45,
                    child: ExperienceCard(
                      type: Type.JOB,
                    )),
                Spacer(),
                SizedBox(
                    width: width * 0.45,
                    child: ExperienceCard(
                      type: Type.ACADEMYC,
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
  const TabletContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height * 0.8;
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
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: ExperienceCard(
              type: Type.ACADEMYC,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
