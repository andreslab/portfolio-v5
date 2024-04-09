import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/providers.dart';
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
    final projectProvider = Provider.of<ProjectProvider>(context);
    final projects = projectProvider.projects;
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final categories = categoryProvider.categories;
    switch (platform) {
      case Platform.desktop:
        return DesktopContainer(
          projects: projects,
          categories: categories,
        );
      case Platform.tablet:
        return TabletContainer(
          projects: projects,
          categories: categories,
        );
      case Platform.mobile:
        return MobileContainer(
          projects: projects,
          categories: categories,
        );
      default:
        return DesktopContainer(
          projects: projects,
          categories: categories,
        );
    }
  }
}

class DesktopContainer extends StatelessWidget {
  final Project projects;
  final Category categories;

  DesktopContainer({
    super.key,
    required this.projects,
    required this.categories,
  });

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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.data.length,
              itemBuilder: (context, index) {
                String title = categories.data[index].attributes.name;
                return FilterItem(title: title);
              },
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
            itemCount: projects.data.length,
            itemBuilder: (BuildContext context, int index) {
              ProjectDatum project = projects.data[index];
              return ProjectCard(
                title: project.attributes.title,
                subtitle: project.attributes.description ?? '',
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
  final Project projects;
  final Category categories;

  TabletContainer({
    super.key,
    required this.projects,
    required this.categories,
  });

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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.data.length,
              itemBuilder: (context, index) {
                String title = categories.data[index].attributes.name;
                return FilterItem(title: title);
              },
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
            itemCount: projects.data.length,
            itemBuilder: (BuildContext context, int index) {
              ProjectDatum project = projects.data[index];
              return ProjectCard(
                title: project.attributes.title,
                subtitle: project.attributes.description ?? '',
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
  final Project projects;
  final Category categories;

  MobileContainer({
    super.key,
    required this.projects,
    required this.categories,
  });

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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.data.length,
              itemBuilder: (context, index) {
                String title = categories.data[index].attributes.name;
                return FilterItem(title: title);
              },
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
            itemCount: projects.data.length,
            itemBuilder: (BuildContext context, int index) {
              ProjectDatum project = projects.data[index];
              return ProjectCard(
                title: project.attributes.title,
                subtitle: project.attributes.description ?? '',
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
