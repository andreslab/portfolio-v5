import 'package:flutter/material.dart';

import '../screens/utils.dart';

class CustomDrawer extends StatelessWidget {
  final bool includeProfileScreen;

  const CustomDrawer({required this.includeProfileScreen});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Constants.DRAWER_WIDTH,
      backgroundColor: Colors.blue,
      child: Column(
        children: [
          DrawerHeader(
              child: Column(
            children: [if (includeProfileScreen) Icon(Icons.person)],
          )),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text('Resumen'),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text('Producción'),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text('Finanzas'),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text('Productos'),
          )
        ],
      ),
    );
  }
}
