import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:porfolio/models/models.dart';

class Mobile extends StatelessWidget {
  final PersonalAttributes? personalData;
  const Mobile({
    super.key,
    required this.personalData,
  });

  @override
  Widget build(BuildContext context) {
    const minHeight = 550.0;
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final responsiveHeight = size.height;
    final height = responsiveHeight < minHeight ? minHeight : responsiveHeight;
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
