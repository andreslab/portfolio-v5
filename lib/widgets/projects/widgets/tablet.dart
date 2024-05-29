import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Tablet extends StatelessWidget {
  final List<String> items = List.generate(3, (index) => 'Item ${index + 1}');
  final List<Project> projects;
  final List<Category> categories;

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
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                String title = categories[index].name;
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
            itemCount: projects.length,
            itemBuilder: (BuildContext context, int index) {
              Project project = projects[index];
              return ProjectCard(
                project: project,
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
                    Navigator.pushNamed(context, '/projects');
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
