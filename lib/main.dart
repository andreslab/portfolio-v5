import 'package:flutter/material.dart';
import 'package:rancho/responsive/responsive.dart';
import 'package:rancho/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:rancho/providers/ui_provider.dart';

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
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: Colors.red),
            primaryColor: Colors.orange,
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.orange)),
      ),
    );
  }
}
