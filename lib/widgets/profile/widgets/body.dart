import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            'Jaime Andrade',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Full-stack developer',
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

class TabletContainer extends StatelessWidget {
  const TabletContainer({
    super.key,
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
            'Jaime Andrade',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Full-stack developer',
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
