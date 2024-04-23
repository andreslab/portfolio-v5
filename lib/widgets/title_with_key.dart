import 'package:flutter/material.dart';

import '../screens/utils.dart';

class TitleWithKey extends StatelessWidget {
  final String title;

  const TitleWithKey({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
      child: Container(
        key: key,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
