import 'package:flutter/material.dart';

// Basic actions:
// * New sell
// * New buy
// * New product
// * New line of production

class ActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        elevation: 0, child: Icon(Icons.question_mark), onPressed: null);
  }
}
