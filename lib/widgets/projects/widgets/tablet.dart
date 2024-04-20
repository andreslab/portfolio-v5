import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Tablet extends StatelessWidget {
  final List<String> items = List.generate(3, (index) => 'Item ${index + 1}');
  final Project projects;
  final Category categories;

  Tablet({
    super.key,
    required this.projects,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final size = MediaQuery.of(context).size;
    final width = size.width;
    const height = 550.0;
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Projects',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 20,
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
            height: 5,
          ),
          Visibility(
            visible: !uiProvider.isSingleScreen,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
              child: GestureDetector(
                  onTap: () {
                    uiProvider.isSingleScreen = true;
                    uiProvider.selectedMenuOpt = 1;
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: AppTheme.primary,
                      decoration: TextDecoration.underline,
                    ),
                  )),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
