import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';

import '../screens/utils.dart';

class CustomDrawer extends StatelessWidget {
  final bool includeProfileScreen;

  const CustomDrawer({required this.includeProfileScreen});

  @override
  Widget build(BuildContext context) {
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
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'HOME',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'ABOUT',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text(
              'SERVICES',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text(
              'EXPERIENCE',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            leading: Icon(Icons.business_center),
            title: Text(
              'PROJECTS',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ListTile(
            leading: Icon(Icons.email_rounded),
            title: Text(
              'CONTACT',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }
}
