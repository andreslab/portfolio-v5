import 'package:flutter/material.dart';
import 'package:porfolio/responsive/responsive.dart';
import 'package:porfolio/screens/screens.dart';
import 'package:porfolio/widgets/widgets.dart';
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
          create: (_) => ContactProvider(),
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
        ),
        ChangeNotifierProvider(
          create: (_) => SkillProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Porfolio',
        initialRoute: '/',
        routes: {
          '/': (_) => ResponseLayout(
              mobileScaffold: MobileScaffold(),
              tabletScaffold: TabletScaffold(),
              desktopScaffold: DesktopScaffold()),
          '/projects': (_) => Projects(
                isfullScreen: true,
              ),
          '/detail': (_) => DetailScreen()
        },
        theme: AppTheme.themeData,
      ),
    );
  }
}
