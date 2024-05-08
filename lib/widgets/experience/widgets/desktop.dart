import 'package:flutter/material.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:porfolio/screens/utils.dart';

class Desktop extends StatelessWidget {
  final List<Study> institutes;
  final List<Job> jobs;
  const Desktop({
    super.key,
    required this.institutes,
    required this.jobs,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width - Constants.DRAWER_WIDTH;
    const height = 500.0;
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: width * 0.45,
                    child: ExperienceCard(
                      type: Type.JOB,
                      items: jobs
                          .map((e) => ItemModel(
                              period: '2024',
                              title: e.company,
                              subtitle: e.description))
                          .toList(),
                    )),
                Spacer(),
                SizedBox(
                    width: width * 0.45,
                    child: ExperienceCard(
                      type: Type.ACADEMYC,
                      items: institutes
                          .map((e) => ItemModel(
                              period: '2024',
                              title: e.institute,
                              subtitle: e.title))
                          .toList(),
                    )),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
