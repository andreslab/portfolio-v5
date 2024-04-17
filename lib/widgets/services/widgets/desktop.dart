import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:porfolio/screens/utils.dart';

class Desktop extends StatelessWidget {
  const Desktop({
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
