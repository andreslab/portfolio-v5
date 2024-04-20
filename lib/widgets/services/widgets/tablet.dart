import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:porfolio/screens/utils.dart';

class Tablet extends StatelessWidget {
  const Tablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    const height = 550.0;
    return SizedBox(
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
            height: 20,
          ),
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
                ),
                SizedBox(
                  height: 10,
                ),
                ServiceCard(
                  title: "Mobile",
                  platform: Platform.tablet,
                  backgroundColor: AppTheme.primary,
                  isDarkTheme: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ServiceCard(
                  title: "Backend",
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
          Spacer()
        ],
      ),
    );
  }
}
