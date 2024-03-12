import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:porfolio/theme/app_theme.dart';

enum Type { JOB, ACADEMYC }

class ExperienceCard extends StatelessWidget {
  final Type type;
  const ExperienceCard({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(children: [
        Item(
            type: type,
            period: '2019 - Present',
            title: 'Academic Degree',
            subtitle:
                'Lorem ipsum dolor sit amet quo ei simul congue exerci ad nec admodum perfecto.'),
        Item(
            type: type,
            period: '2019 - Present',
            title: 'Academic Degree',
            subtitle:
                'Lorem ipsum dolor sit amet quo ei simul congue exerci ad nec admodum perfecto.'),
        Item(
            type: type,
            period: '2019 - Present',
            title: 'Academic Degree',
            subtitle:
                'Lorem ipsum dolor sit amet quo ei simul congue exerci ad nec admodum perfecto.'),
      ]),
    );
  }
}

class Item extends StatelessWidget {
  final Type type;
  final String period;
  final String title;
  final String subtitle;
  const Item(
      {super.key,
      required this.type,
      required this.period,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              FaIcon(
                type == Type.JOB ? Icons.work : Icons.school,
                color: AppTheme.secondary,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 1.0, // Ancho muy pequeño
                height: 60.0, // Altura deseada
                color: AppTheme.secondary, // Color de la línea
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$period',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$title',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$subtitle',
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
