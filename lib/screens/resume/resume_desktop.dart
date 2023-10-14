import 'package:flutter/material.dart';
import 'package:rancho/screens/utils.dart';

class ResumeDesktopScreen extends StatelessWidget {
  const ResumeDesktopScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [_MainValue(), _MainValue(), _MainValue(), _MainValue()],
          ),
          Row(
            children: [_LargeWidget(), _LargeWidget()],
          ),
          Row(
            children: [
              _MediumWidget(),
              _MediumWidget(),
              _MediumWidget(),
              _MediumWidget()
            ],
          ),
          Row(
            children: [_LargeWidget(), _LargeWidget()],
          ),
          Row(
            children: [_LargeWidget(), _LargeWidget()],
          )
        ],
      ),
    );
  }
}

class _MainValue extends StatelessWidget {
  const _MainValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = (size.width - Constants.DRAWER_WIDTH) * 0.25;
    return Container(
      width: width,
      height: 100,
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

class _MediumWidget extends StatelessWidget {
  const _MediumWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = (size.width - Constants.DRAWER_WIDTH) * 0.25;
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

class _LargeWidget extends StatelessWidget {
  const _LargeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = (size.width - Constants.DRAWER_WIDTH) * 0.50;
    return Container(
      width: width,
      height: 250,
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
