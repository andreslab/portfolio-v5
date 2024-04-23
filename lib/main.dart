import 'package:flutter/material.dart';
import 'package:porfolio/responsive/responsive.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UiProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => InstituteProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => TopicsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => JobProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProjectProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProfileProvider(),
          lazy: false,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Porfolio',
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
