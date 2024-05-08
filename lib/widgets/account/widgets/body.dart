import 'package:flutter/material.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/models/models.dart';

import 'package:porfolio/widgets/account/widgets/desktop.dart';
import 'package:porfolio/widgets/account/widgets/mobile.dart';
import 'package:porfolio/widgets/account/widgets/tablet.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);
    final personal = profileProvider.personal;
    final uiProvider = Provider.of<UiProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWithKey(key: uiProvider.profileKey, title: ''),
        _buildPlatformWidget(uiProvider.pratform, personal),
      ],
    );
  }

  Widget _buildPlatformWidget(Platform platform, Profile personal) {
    switch (platform) {
      case Platform.desktop:
        return Desktop(
          profileData: personal,
        );
      case Platform.tablet:
        return Tablet(
          profileData: personal,
        );
      case Platform.mobile:
        return Mobile(
          profileData: personal,
        );
      default:
        return Desktop(
          profileData: personal,
        );
    }
  }
}
