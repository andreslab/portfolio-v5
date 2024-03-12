import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';

class CountService extends StatelessWidget {
  final String detail;
  final double value;
  const CountService({super.key, required this.value, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Icon(Icons.store, size: 40, color: AppTheme.iconSecondary),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$value',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              '$detail',
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        )
      ]),
    );
  }
}
