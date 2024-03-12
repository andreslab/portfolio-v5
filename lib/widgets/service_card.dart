import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final Color backgroundColor;
  final bool isDarkTheme;
  const ServiceCard(
      {super.key, required this.backgroundColor, required this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Column(children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            'images/image-preview.png',
            fit: BoxFit.cover,
          ),
        ),
        // Image.network(
        //     'https://rkdfuniversity.org/assets/Assets/images/image-preview.png'),
        SizedBox(
          height: 5,
        ),
        Text(
          'Title',
          style: TextStyle(
              fontSize: 30.0, color: isDarkTheme ? Colors.white : Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Lorem ipsum dolor sit amet consectetuer adipiscing elit aenean commodo ligula eget.',
          style: TextStyle(
              fontSize: 15.0, color: isDarkTheme ? Colors.white : Colors.black),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
