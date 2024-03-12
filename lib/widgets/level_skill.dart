import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';

class LevelSkill extends StatelessWidget {
  final double value;
  final String title;
  const LevelSkill({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 10.0),
        SliderTheme(
          data: SliderThemeData(
              thumbShape: SliderComponentShape.noThumb,
              overlayShape: SliderComponentShape.noOverlay,
              activeTrackColor: Colors.white,
              disabledActiveTrackColor: AppTheme.secondary,
              disabledInactiveTrackColor: AppTheme.sixth),
          child: Slider(
            value: value,
            min: 0.0,
            max: 100.0,
            onChanged: null,
          ),
        ),
      ],
    );
  }
}
