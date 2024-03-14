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
        return MobileContainer();
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
    final height = size.height * 0.4;
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
              'Services',
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
                    width: width * 0.3,
                    height: height * 0.6,
                    child: ServiceCard(
                      platform: Platform.desktop,
                      backgroundColor: AppTheme.fifth,
                      isDarkTheme: false,
                    )),
                Spacer(),
                SizedBox(
                    width: width * 0.3,
                    height: height * 0.6,
                    child: ServiceCard(
                      platform: Platform.desktop,
                      backgroundColor: AppTheme.primary,
                      isDarkTheme: true,
                    )),
                Spacer(),
                SizedBox(
                    width: width * 0.3,
                    height: height * 0.6,
                    child: ServiceCard(
                      platform: Platform.desktop,
                      backgroundColor: AppTheme.sixth,
                      isDarkTheme: false,
                    )),
              ],
            ),
          ),
          Spacer(),
          Center(
              child: Text(
            'Looking for a custom job? Click here to contact me!',
            style: Theme.of(context).textTheme.titleSmall,
          )),
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
    final height = size.height * 0.4;
    return Container(
      width: width,
      height: height,
      // decoration: BoxDecoration(color: AppTheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Services',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ServiceCard(
                  platform: Platform.tablet,
                  backgroundColor: AppTheme.fifth,
                  isDarkTheme: false,
                ),
                SizedBox(
                  height: 10,
                ),
                ServiceCard(
                  platform: Platform.tablet,
                  backgroundColor: AppTheme.primary,
                  isDarkTheme: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ServiceCard(
                  platform: Platform.tablet,
                  backgroundColor: AppTheme.sixth,
                  isDarkTheme: false,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'Looking for a custom job? Click here to contact me!',
            style: Theme.of(context).textTheme.titleSmall,
          )),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class MobileContainer extends StatelessWidget {
  const MobileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
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
              'Services',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    child: ServiceCard(
                      platform: Platform.mobile,
                      backgroundColor: AppTheme.fifth,
                      isDarkTheme: false,
                    )),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 100,
                    child: ServiceCard(
                      platform: Platform.mobile,
                      backgroundColor: AppTheme.primary,
                      isDarkTheme: true,
                    )),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 100,
                    child: ServiceCard(
                      platform: Platform.mobile,
                      backgroundColor: AppTheme.sixth,
                      isDarkTheme: false,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'Looking for a custom job? Click here to contact me!',
            style: Theme.of(context).textTheme.titleSmall,
          )),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
