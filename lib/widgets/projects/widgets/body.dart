import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Body extends StatelessWidget {
  final Platform platform;

  const Body({
    super.key,
    required this.platform,
  });

  @override
  Widget build(BuildContext context) {
    switch (platform) {
      case Platform.desktop:
        return DesktopContainer();
      case Platform.tablet:
        return TabletContainer();
      case Platform.mobile:
        return MobileContainer();
      default:
        return DesktopContainer();
    }
  }
}

class DesktopContainer extends StatelessWidget {
  final List<String> items = List.generate(5, (index) => 'Item ${index + 1}');

  // const DesktopContainer({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width - Constants.DRAWER_WIDTH;
    return Container(
      width: width,
      // decoration: BoxDecoration(color: AppTheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Projects',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FilterItem(title: 'Everything'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Web'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Apps'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Platform'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Game'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Número de columnas en el grid
              crossAxisSpacing: 10.0, // Espacio horizontal entre los elementos
              mainAxisSpacing: 10.0, // Espacio vertical entre los elementos
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ProjectCard(
                title: 'Title',
                subtitle:
                    'Lorem ipsum dolor sit amet consectetuer adipiscing elit aenean commodo ligula eget.',
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class TabletContainer extends StatelessWidget {
  final List<String> items = List.generate(3, (index) => 'Item ${index + 1}');

  // const TabletContainer({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Container(
      width: width,
      // decoration: BoxDecoration(color: AppTheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Projects',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FilterItem(title: 'Everything'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Web'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Apps'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Platform'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Game'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Número de columnas en el grid
              crossAxisSpacing: 10.0, // Espacio horizontal entre los elementos
              mainAxisSpacing: 10.0, // Espacio vertical entre los elementos
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ProjectCard(
                title: 'Title',
                subtitle:
                    'Lorem ipsum dolor sit amet consectetuer adipiscing elit aenean commodo ligula eget.',
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class MobileContainer extends StatelessWidget {
  final List<String> items = List.generate(1, (index) => 'Item ${index + 1}');

  // const MobileContainer({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Container(
      width: width,
      // decoration: BoxDecoration(color: AppTheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Projects',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FilterItem(title: 'Everything'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Web'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Apps'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Platform'),
                SizedBox(
                  width: 10,
                ),
                FilterItem(title: 'Game'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, // Número de columnas en el grid
              crossAxisSpacing: 10.0, // Espacio horizontal entre los elementos
              mainAxisSpacing: 10.0, // Espacio vertical entre los elementos
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ProjectCard(
                title: 'Title',
                subtitle:
                    'Lorem ipsum dolor sit amet consectetuer adipiscing elit aenean commodo ligula eget.',
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
