import 'package:flutter/material.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/utils.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:porfolio/models/models.dart';

class Body extends StatelessWidget {
  final Platform platform;

  const Body({super.key, required this.platform});

  @override
  Widget build(BuildContext context) {
    final personalProvider = Provider.of<ProfileProvider>(context);
    final personal = personalProvider.personal.data?.attributes;

    switch (platform) {
      case Platform.desktop:
        return DesktopContainer(
          personalData: personal,
        );
      case Platform.tablet:
        return TabletContainer(
          personalData: personal,
        );
      case Platform.mobile:
        return MobileContainer(
          personalData: personal,
        );
      default:
        return DesktopContainer(
          personalData: personal,
        );
    }
  }
}

class DesktopContainer extends StatelessWidget {
  final PersonalAttributes? personalData;
  const DesktopContainer({
    super.key,
    required this.personalData,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width - Constants.DRAWER_WIDTH;
    final height = size.height * 0.6;
    return Container(
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
            '${personalData?.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${personalData?.role}',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    openUrl('${personalData?.instagram}');
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    openUrl('${personalData?.twitter}');
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    openUrl('${personalData?.linkedin}');
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    openUrl('${personalData?.github}');
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    openUrl('${personalData?.facebook}');
                  })
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                openUrl('${personalData?.cv}');
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

class TabletContainer extends StatelessWidget {
  final PersonalAttributes? personalData;
  const TabletContainer({
    super.key,
    required this.personalData,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height * 0.6;
    return Container(
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
            '${personalData?.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${personalData?.role}',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  })
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
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

class MobileContainer extends StatelessWidget {
  final PersonalAttributes? personalData;
  const MobileContainer({
    super.key,
    required this.personalData,
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
            '${personalData?.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${personalData?.role}',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: AppTheme.iconPrimary,
                  ),
                  onPressed: () {
                    print("Pressed");
                  })
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
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
