import 'package:flutter/material.dart';
import 'package:porfolio/providers/project_provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/utils.dart';
import 'package:porfolio/widgets/contact/contact.dart';
import 'package:porfolio/widgets/contact/widgets/contact_form.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as ScreenArguments;
    final project = args.project;

    String getAssetUrl(index) {
      if ((project.assets?.length ?? 0) < (index + 1))
        return 'images/image-preview.png';
      return project.assets?[index];
    }

    String getDetail(index) {
      if ((project.details?.length ?? 0) < (index + 1)) return 'Sample detail';
      return project.details?[index];
    }

    Future<void> _launchUrl(url) async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Image.network(
                  //   '$urlIcon',
                  //   fit:
                  //       BoxFit.contain, // Use BoxFit.cover to cover the container
                  // ),
                  Image.asset(
                    'images/image-preview.png',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom:
                        20, // Adjust as needed for spacing between title and button
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        project.name,
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            _launchUrl(Uri.parse('https://google.com'));
                          },
                          child: Text(
                            'DEMO',
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(Constants.MARGIN_BODY),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 450,
                          height: 300,
                          decoration: BoxDecoration(color: Colors.green),
                          child: Image.asset(
                            getAssetUrl(0),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Text(
                            maxLines: 20,
                            getDetail(0),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            maxLines: 20,
                            getDetail(1),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: 300,
                          height: 250,
                          decoration: BoxDecoration(color: Colors.green),
                          child: Image.asset(
                            getAssetUrl(1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 300,
                          height: 250,
                          decoration: BoxDecoration(color: Colors.green),
                          child: Image.asset(
                            getAssetUrl(2),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Text(
                            maxLines: 20,
                            getDetail(2),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ContactForm()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
