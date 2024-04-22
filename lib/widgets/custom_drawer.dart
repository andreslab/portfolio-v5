import 'package:flutter/material.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:provider/provider.dart';

import '../screens/utils.dart';

class CustomDrawer extends StatelessWidget {
  final bool includeProfileScreen;

  const CustomDrawer({required this.includeProfileScreen});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    void goto(GlobalKey key) {
      final controller = uiProvider.scrollControllerMain;

      final RenderBox renderBox =
          key.currentContext!.findRenderObject() as RenderBox;
      final position = renderBox.localToGlobal(Offset.zero);

      controller.animateTo(
        controller.offset + position.dy,
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 500),
      );
    }

    return Drawer(
      width: Constants.DRAWER_WIDTH,
      child: Column(
        children: [
          DrawerHeader(
              child: Column(
            children: [
              if (includeProfileScreen)
                Container(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 15,
                        ),
                        Text(
                          'Guest',
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Role:',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Visitor',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ],
                ))
            ],
          )),
          ButtonMenuItem(
            title: 'HOME',
            icon: Icons.home,
            onTap: () => goto(uiProvider.profileKey),
          ),
          ButtonMenuItem(
            title: 'ABOUT',
            icon: Icons.menu_book_rounded,
            onTap: () => goto(uiProvider.aboutKey),
          ),
          ButtonMenuItem(
            title: 'SERVICES',
            icon: Icons.category,
            onTap: () => goto(uiProvider.servicesKey),
          ),
          ButtonMenuItem(
            title: 'EXPERIENCE',
            icon: Icons.school,
            onTap: () => goto(uiProvider.experienceKey),
          ),
          ButtonMenuItem(
            title: 'PROJECTS',
            icon: Icons.business_center,
            onTap: () => goto(uiProvider.projectsKey),
          ),
          ButtonMenuItem(
            title: 'CONTACT',
            icon: Icons.email_rounded,
            onTap: () => goto(uiProvider.contactKey),
          ),
        ],
      ),
    );
  }
}

class ButtonMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const ButtonMenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
