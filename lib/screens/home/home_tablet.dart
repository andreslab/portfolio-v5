import 'package:flutter/material.dart';
import 'package:porfolio/responsive/responsive.dart';
import 'package:porfolio/responsive/responsive.dart';
import 'package:porfolio/screens/screens.dart';
import 'package:provider/provider.dart';

import 'package:porfolio/providers/ui_provider.dart';
import 'package:porfolio/widgets/custom_drawer.dart';
import 'package:porfolio/widgets/widgets.dart';

class HomeTabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Menu',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            elevation: 0,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            ]),
        body: _HomeScreenBody(),
        // floatingActionButton: ActionButton(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: CustomDrawer(
          includeProfileScreen: false,
        ));
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
