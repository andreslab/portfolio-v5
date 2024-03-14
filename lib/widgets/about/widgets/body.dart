import 'package:flutter/material.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

class Body extends StatelessWidget {
  final Platform platform;

  const Body({
    super.key,
    required this.platform,
  });

  @override
  Widget build(BuildContext context) {
    switch (platform) {
      case Platform.desktop:
        return DesktopContainer();
      case Platform.tablet:
        return TabletContainer();
      case Platform.mobile:
        return MobileContainer();
      default:
        return DesktopContainer();
    }
  }
}

class DesktopContainer extends StatelessWidget {
  const DesktopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width - Constants.DRAWER_WIDTH;
    final height = size.height * 0.4;
    return Container(
      width: width,
      height: height,
      // decoration: BoxDecoration(color: AppTheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'About Me',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            // width: width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileImage(
                  size: Size.MEDIUM,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',

                                  style: Theme.of(context).textTheme.bodyMedium,
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                  // softWrap:
                                  //     true, // Allows text to wrap onto the next line
                                  // textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding:
                                          EdgeInsets.all(20), // Button padding
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            8), // Button border radius
                                      ),
                                    ),
                                    child: Text('Download CV',
                                        style: AppTheme.buttonLarge))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                LevelSkill(
                                  title: 'Mobile',
                                  value: 80,
                                ),
                                SizedBox(height: 5.0),
                                LevelSkill(
                                  title: 'Backend',
                                  value: 40,
                                ),
                                SizedBox(height: 5.0),
                                LevelSkill(
                                  title: 'Frontend',
                                  value: 60,
                                ),
                                SizedBox(height: 5.0),
                                LevelSkill(
                                  title: 'Devops',
                                  value: 80,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CountService(
                  detail: 'Detalle del servicio',
                  value: 20,
                ),
                Spacer(),
                CountService(
                  detail: 'Detalle del servicio',
                  value: 20,
                ),
                Spacer(),
                CountService(
                  detail: 'Detalle del servicio',
                  value: 20,
                ),
                Spacer(),
                CountService(
                  detail: 'Detalle del servicio',
                  value: 20,
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class TabletContainer extends StatelessWidget {
  const TabletContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height * 0.4;
    return Container(
      width: width,
      height: height,
      // decoration: BoxDecoration(color: AppTheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'About Me',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            // width: width * 0.9,
            child: Expanded(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',

                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              // softWrap:
                              //     true, // Allows text to wrap onto the next line
                              // textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(20), // Button padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Button border radius
                                  ),
                                ),
                                child: Text('Download CV',
                                    style: AppTheme.buttonLarge))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            LevelSkill(
                              title: 'Mobile',
                              value: 80,
                            ),
                            SizedBox(height: 5.0),
                            LevelSkill(
                              title: 'Backend',
                              value: 40,
                            ),
                            SizedBox(height: 5.0),
                            LevelSkill(
                              title: 'Frontend',
                              value: 60,
                            ),
                            SizedBox(height: 5.0),
                            LevelSkill(
                              title: 'Devops',
                              value: 80,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CountService(
                  detail: 'Detalle del servicio',
                  value: 20,
                ),
                Spacer(),
                CountService(
                  detail: 'Detalle del servicio',
                  value: 20,
                ),
                Spacer(),
                CountService(
                  detail: 'Detalle del servicio',
                  value: 20,
                ),
                Spacer(),
                CountService(
                  detail: 'Detalle del servicio',
                  value: 20,
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class MobileContainer extends StatelessWidget {
  const MobileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height * 0.4;
    return Container(
      width: width,
      height: height,
      // decoration: BoxDecoration(color: AppTheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'About Me',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            // width: width * 0.9,
            child: Expanded(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',

                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        // softWrap:
                        //     true, // Allows text to wrap onto the next line
                        // textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          LevelSkill(
                            title: 'Mobile',
                            value: 80,
                          ),
                          SizedBox(height: 5.0),
                          LevelSkill(
                            title: 'Backend',
                            value: 40,
                          ),
                          SizedBox(height: 5.0),
                          LevelSkill(
                            title: 'Frontend',
                            value: 60,
                          ),
                          SizedBox(height: 5.0),
                          LevelSkill(
                            title: 'Devops',
                            value: 80,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20), // Button padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Button border radius
                            ),
                          ),
                          child:
                              Text('Download CV', style: AppTheme.buttonLarge))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
