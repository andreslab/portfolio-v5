import 'package:flutter/material.dart';

import '../screens/utils.dart';

class ServiceCard extends StatelessWidget {
  final Platform platform;
  final Color backgroundColor;
  final bool isDarkTheme;

  const ServiceCard(
      {super.key,
      required this.platform,
      required this.backgroundColor,
      required this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    switch (platform) {
      case Platform.desktop:
        return DesktopContainer(
          backgroundColor: backgroundColor,
          isDarkTheme: isDarkTheme,
        );
      case Platform.tablet:
        return TabletContainer(
          backgroundColor: backgroundColor,
          isDarkTheme: isDarkTheme,
        );
      case Platform.mobile:
        return MobileContainer(
          backgroundColor: backgroundColor,
          isDarkTheme: isDarkTheme,
        );
      default:
        return DesktopContainer(
          backgroundColor: backgroundColor,
          isDarkTheme: isDarkTheme,
        );
    }
  }
}

class DesktopContainer extends StatelessWidget {
  final Color backgroundColor;
  final bool isDarkTheme;
  const DesktopContainer(
      {super.key, required this.backgroundColor, required this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Column(children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            'images/image-preview.png',
            fit: BoxFit.cover,
          ),
        ),
        // Image.network(
        //     'https://rkdfuniversity.org/assets/Assets/images/image-preview.png'),
        SizedBox(
          height: 5,
        ),
        Text(
          'Title',
          style: TextStyle(
              fontSize: 30.0, color: isDarkTheme ? Colors.white : Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Lorem ipsum dolor sit amet consectetuer adipiscing elit aenean commodo ligula eget.',
          style: TextStyle(
              fontSize: 15.0, color: isDarkTheme ? Colors.white : Colors.black),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}

class TabletContainer extends StatelessWidget {
  final Color backgroundColor;
  final bool isDarkTheme;
  const TabletContainer(
      {super.key, required this.backgroundColor, required this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Row(children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            'images/image-preview.png',
            fit: BoxFit.cover,
          ),
        ),
        // Image.network(
        //     'https://rkdfuniversity.org/assets/Assets/images/image-preview.png'),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                    fontSize: 30.0,
                    color: isDarkTheme ? Colors.white : Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetuer adipiscing elit aenean commodo ligula eget.',
                style: TextStyle(
                    fontSize: 15.0,
                    color: isDarkTheme ? Colors.white : Colors.black),
                textAlign: TextAlign.start,
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class MobileContainer extends StatelessWidget {
  final Color backgroundColor;
  final bool isDarkTheme;
  const MobileContainer(
      {super.key, required this.backgroundColor, required this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Container(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                    fontSize: 30.0,
                    color: isDarkTheme ? Colors.white : Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetuer adipiscing elit aenean commodo ligula eget.',
                style: TextStyle(
                    fontSize: 15.0,
                    color: isDarkTheme ? Colors.white : Colors.black),
                textAlign: TextAlign.start,
              )
            ],
          ),
        ),
      ),
    );
  }
}
