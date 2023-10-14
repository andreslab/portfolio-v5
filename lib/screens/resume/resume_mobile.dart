import 'package:flutter/material.dart';

class ResumeMobileScreen extends StatelessWidget {
  const ResumeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [MainValue(), MainValue()],
          ),
          Row(
            children: [MainValue(), MainValue()],
          ),
          LargeWidget(),
          LargeWidget(),
          Row(
            children: [MainValue(), MainValue()],
          ),
          LargeWidget(),
        ],
      ),
    );
  }
}

class MainValue extends StatelessWidget {
  const MainValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.5;

    return Container(
      width: width,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.amber),
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Text('Title'),
            Text('23%'),
            Text('Detail'),
          ],
        ),
      ),
    );
  }
}

class LargeWidget extends StatelessWidget {
  const LargeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Container(
      width: width,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.amber),
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Text('Title'),
            Text('23%'),
            Text('Detail'),
          ],
        ),
      ),
    );
  }
}
