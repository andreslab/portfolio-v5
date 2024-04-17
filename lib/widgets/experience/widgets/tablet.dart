import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:porfolio/screens/utils.dart';

class Tablet extends StatelessWidget {
  final Institute institutes;
  final Job jobs;
  const Tablet({
    super.key,
    required this.institutes,
    required this.jobs,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
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
              'Experience (+7 years)',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: ExperienceCard(
              type: Type.JOB,
              items: jobs.data
                  .map((e) => ItemModel(
                      period: '2024',
                      title: e.attributes.company,
                      subtitle: e.attributes.description))
                  .toList(),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: ExperienceCard(
              type: Type.ACADEMYC,
              items: institutes.data
                  .map((e) => ItemModel(
                      period: '2024',
                      title: e.attributes.name,
                      subtitle: e.attributes.career))
                  .toList(),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
