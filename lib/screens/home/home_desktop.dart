import 'package:flutter/material.dart';
import 'package:porfolio/responsive/responsive.dart';
import 'package:porfolio/responsive/responsive.dart';
import 'package:porfolio/screens/screens.dart';
import 'package:provider/provider.dart';

import 'package:porfolio/providers/ui_provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/custom_drawer.dart';
import 'package:porfolio/widgets/widgets.dart';

class HomeDesktopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Menu'), elevation: 0, actions: [
      //   IconButton(onPressed: () {}, icon: Icon(Icons.person)),
      // ]),
      body: Row(
        children: [
          CustomDrawer(includeProfileScreen: true),
          _HomeScreenBody(),
        ],
      ),
      // floatingActionButton: ActionButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return ResumeScreen();
      case 1:
        return ProductsScreen();
      case 2:
        return DetailScreen();
      default:
        return ResumeScreen();
    }
  }
}
