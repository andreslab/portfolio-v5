import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Desktop extends StatelessWidget {
  final List<Project> projects;
  final List<Category> categories;

  Desktop({
    super.key,
    required this.projects,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final size = MediaQuery.of(context).size;
    final width = size.width - Constants.DRAWER_WIDTH;
    const minHeight = 500.0;
    final responsiveHeight = size.height * 0.7;
    final height = responsiveHeight < minHeight ? minHeight : responsiveHeight;
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
            height: 20,
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Número de columnas en el grid
              crossAxisSpacing: 10.0, // Espacio horizontal entre los elementos
              mainAxisSpacing: 10.0, // Espacio vertical entre los elementos
            ),
            itemCount: projects.length,
            itemBuilder: (BuildContext context, int index) {
              Project project = projects[index];
              return ProjectCard(
                title: project.title,
                subtitle: project.description ?? '',
              );
            },
          ),
          SizedBox(
            height: 10,
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
