import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:porfolio/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

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

    return BottomNavigationBar(
      onTap: (value) => uiProvider.selectedMenuOpt = value,
      // currentIndex: currentIndex,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => goto(uiProvider.profileKey),
                icon: Icon(Icons.home)),
            label: 'HOME'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => goto(uiProvider.aboutKey),
                icon: Icon(Icons.menu_book_rounded)),
            label: 'ABOUT'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => goto(uiProvider.servicesKey),
                icon: Icon(Icons.category)),
            label: 'SERVICES'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => goto(uiProvider.experienceKey),
                icon: Icon(Icons.school)),
            label: 'EXPERIENCE'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => goto(uiProvider.projectsKey),
                icon: Icon(Icons.business_center)),
            label: 'PROJECTS'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () => goto(uiProvider.contactKey),
                icon: Icon(Icons.email_rounded)),
            label: 'CONTACT'),
      ],
    );
  }
}
