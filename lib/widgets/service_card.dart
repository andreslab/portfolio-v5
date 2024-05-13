import 'package:flutter/material.dart';
import 'package:porfolio/models/skill.dart';
import 'package:porfolio/providers/constants.dart';
import 'package:porfolio/widgets/technology_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/utils.dart';

class ServiceCard extends StatelessWidget {
  final Platform platform;
  final Color backgroundColor;
  final bool isDarkTheme;
  final String title;
  final List<Skill> skills;

  const ServiceCard(
      {super.key,
      required this.platform,
      required this.backgroundColor,
      required this.isDarkTheme,
      required this.title,
      required this.skills});

  @override
  Widget build(BuildContext context) {
    switch (platform) {
      case Platform.desktop:
        return DesktopContainer(
          title: title,
          backgroundColor: backgroundColor,
          isDarkTheme: isDarkTheme,
          skills: skills,
        );
      case Platform.tablet:
        return TabletContainer(
          title: title,
          backgroundColor: backgroundColor,
          isDarkTheme: isDarkTheme,
          skills: skills,
        );
      case Platform.mobile:
        return MobileContainer(
          title: title,
          backgroundColor: backgroundColor,
          isDarkTheme: isDarkTheme,
          skills: skills,
        );
      default:
        return DesktopContainer(
          title: title,
          backgroundColor: backgroundColor,
          isDarkTheme: isDarkTheme,
          skills: skills,
        );
    }
  }
}

class DesktopContainer extends StatelessWidget {
  final Color backgroundColor;
  final bool isDarkTheme;
  final String title;
  final List<Skill> skills;
  final maxItems = 6;
  const DesktopContainer(
      {super.key,
      required this.backgroundColor,
      required this.isDarkTheme,
      required this.title,
      required this.skills});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Column(children: [
        Text(
          '$title',
          style: TextStyle(
              fontSize: 30.0, color: isDarkTheme ? Colors.white : Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        GridView.builder(
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Número de columnas en el grid
              crossAxisSpacing: 5.0, // Espacio horizontal entre los elementos
              mainAxisSpacing: 5.0, // Espacio vertical entre los elementos
              mainAxisExtent: 100),
          itemCount: skills.length < maxItems ? skills.length : maxItems,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: TechnologyImage(
                  isDarkTheme: isDarkTheme,
                  title: skills[index].title,
                  urlIcon:
                      '${Environment.assetsUrl}/${skills[index].icon ?? 'default_skill.png'}'),
            );
          },
        ),
      ]),
    );
  }
}

class TabletContainer extends StatelessWidget {
  final Color backgroundColor;
  final bool isDarkTheme;
  final String title;
  final List<Skill> skills;
  const TabletContainer({
    super.key,
    required this.backgroundColor,
    required this.isDarkTheme,
    required this.title,
    required this.skills,
  });

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
                title,
                style: TextStyle(
                    fontSize: 30.0,
                    color: isDarkTheme ? Colors.white : Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                skills.map((e) => e.title).join(','),
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
  final String title;
  final List<Skill> skills;
  const MobileContainer({
    super.key,
    required this.backgroundColor,
    required this.isDarkTheme,
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 30.0,
                  color: isDarkTheme ? Colors.white : Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              skills.map((e) => e.title).join(','),
              style: TextStyle(
                  fontSize: 15.0,
                  color: isDarkTheme ? Colors.white : Colors.black),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
