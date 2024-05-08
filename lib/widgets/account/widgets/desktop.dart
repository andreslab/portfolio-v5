import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/utils.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Desktop extends StatelessWidget {
  final Profile profileData;
  const Desktop({
    super.key,
    required this.profileData,
  });

  @override
  Widget build(BuildContext context) {
    const minHeight = 500.0;
    final size = MediaQuery.of(context).size;
    final width = size.width - Constants.DRAWER_WIDTH;
    const minHeightScreenForFullScreen = 1000.0;
    final isFullScreen = minHeightScreenForFullScreen >
        size.height; //full screen or share with about
    final responsiveHeight = size.height * 0.6;
    final height = isFullScreen ? size.height : responsiveHeight;
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileImage(
            size: Size.LARGE,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${profileData?.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${profileData?.role}',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // IconButton(
              //     icon: FaIcon(
              //       FontAwesomeIcons.instagram,
              //       color: AppTheme.iconPrimary,
              //     ),
              //     onPressed: () {
              //       openUrl('${profileData?.instagram}');
              //     }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    openUrl('${profileData?.twitter}');
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    openUrl('${profileData?.linkedin}');
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    openUrl('${profileData?.github}');
                  }),
              // IconButton(
              //     icon: FaIcon(
              //       FontAwesomeIcons.facebook,
              //       color: AppTheme.iconPrimary,
              //     ),
              //     onPressed: () {
              //       openUrl('${profileData?.facebook}');
              //     })
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                openUrl('${profileData?.cv}');
              },
              child: Text(
                'HIRE ME',
              )),
          SizedBox(
            height: 50,
          ),
          Text(
            'Scroll Down',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Image.asset(
            "gif/icons8-double-down.gif",
            height: 50.0,
            width: 50.0,
          ),
        ],
      ),
    );
  }
}
