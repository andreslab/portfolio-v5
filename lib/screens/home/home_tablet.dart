import 'package:flutter/material.dart';
import 'package:rancho/responsive/responsive.dart';
import 'package:rancho/responsive/responsive.dart';
import 'package:rancho/screens/screens.dart';
import 'package:provider/provider.dart';

import 'package:rancho/providers/ui_provider.dart';
import 'package:rancho/widgets/custom_drawer.dart';
import 'package:rancho/widgets/widgets.dart';

class HomeTabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Menu'), elevation: 0, actions: [
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
        return ResumeTabletScreen();
      case 1:
        return ProductionTabletScreen();
      case 2:
        return FinancesTabletScreen();
      case 3:
        return ProductsTabletScreen();
      default:
        return ResumeTabletScreen();
    }
  }
}
