import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:porfolio/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (value) => uiProvider.selectedMenuOpt = value,
      currentIndex: currentIndex,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ABOUT'),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: 'SERVICES'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'EXPERIENCE'),
        BottomNavigationBarItem(
            icon: Icon(Icons.email_rounded), label: 'CONTACT'),
      ],
    );
  }
}
