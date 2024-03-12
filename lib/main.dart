import 'package:flutter/material.dart';
import 'package:porfolio/responsive/responsive.dart';
import 'package:porfolio/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/providers/ui_provider.dart';
import 'package:porfolio/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'digital menu',
        initialRoute: 'home',
        routes: {
          'home': (_) => ResponseLayout(
              mobileScaffold: MobileScaffold(),
              tabletScaffold: TabletScaffold(),
              desktopScaffold: DesktopScaffold()),
        },
        theme: AppTheme.themeData,
      ),
    );
  }
}
