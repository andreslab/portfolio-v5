import 'package:flutter/material.dart';
import 'package:rancho/responsive/responsive.dart';
import 'package:rancho/screens/screens.dart';
import 'package:provider/provider.dart';

import 'package:rancho/providers/ui_provider.dart';
import 'package:rancho/widgets/widgets.dart';

class HomeMobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu'), elevation: 0, actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
      ]),
      body: _HomeScreenBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        return ResumeMobileScreen();
      case 1:
        return ProductionMobileScreen();
      case 2:
        return FinancesMobileScreen();
      case 3:
        return ProductsMobileScreen();
      default:
        return ResumeMobileScreen();
    }
  }
}
