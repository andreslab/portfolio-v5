import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  final String title;
  final bool isActive = false;

  const FilterItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isActive ? () => print('ok') : null,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[200],
          disabledBackgroundColor: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                30.0), // Aquí puedes ajustar el radio del borde
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          '$title',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
