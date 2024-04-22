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
    const height = 500.0;
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ServiceCard(
                    title: 'Web',
                    platform: Platform.desktop,
                    backgroundColor: AppTheme.fifth,
                    isDarkTheme: false,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: ServiceCard(
                    title: 'Mobile',
                    platform: Platform.desktop,
                    backgroundColor: AppTheme.primary,
                    isDarkTheme: true,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: ServiceCard(
                    title: 'Backend',
                    platform: Platform.desktop,
                    backgroundColor: AppTheme.sixth,
                    isDarkTheme: false,
                  ),
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
          Spacer(),
        ],
      ),
    );
  }
}
