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
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Resumen'),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Registro'),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Noticias'),
        BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarmas'),
      ],
    );
  }
}
