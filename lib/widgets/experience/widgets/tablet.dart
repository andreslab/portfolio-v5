import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:porfolio/screens/utils.dart';

class Tablet extends StatelessWidget {
  final List<Study> institutes;
  final List<Job> jobs;
  const Tablet({
    super.key,
    required this.institutes,
    required this.jobs,
  });

  @override
  Widget build(BuildContext context) {
    const minHeight = 650.0;
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final responsiveHeight = size.height * 0.7;
    final height = responsiveHeight < minHeight ? minHeight : responsiveHeight;
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: ExperienceCard(
              type: Type.JOB,
              items: jobs
                  .map((e) => ItemModel(
                      period: '2024',
                      title: e.company,
                      subtitle: e.description))
                  .toList(),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: ExperienceCard(
              type: Type.ACADEMYC,
              items: institutes
                  .map((e) => ItemModel(
                      period: '2024', title: e.institute, subtitle: e.title))
                  .toList(),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
