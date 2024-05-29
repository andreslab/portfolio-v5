import 'package:flutter/material.dart';
import 'package:porfolio/providers/project_provider.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/contact/contact.dart';
import 'package:porfolio/widgets/contact/widgets/contact_form.dart';
import 'package:provider/provider.dart';
import 'dart:html';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as ScreenArguments;
    final nameUrl = args.nameUrl;

    final projectProvider = Provider.of<ProjectProvider>(context);
    projectProvider.getProjectsByName(nameUrl);
    final project = projectProvider.currentProject;

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
                  Expanded(
                      child: Image.asset(
                    'images/image-preview.png',
                    fit: BoxFit.cover,
                  )),
                  Positioned(
                    bottom:
                        20, // Adjust as needed for spacing between title and button
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        project?.name ?? 'Project',
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
                          onPressed: () {},
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
            Padding(
              padding: const EdgeInsets.all(Constants.MARGIN_BODY),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 450,
                        height: 300,
                        decoration: BoxDecoration(color: Colors.green),
                        child: Expanded(
                            child: Image.asset(
                          project?.assets[0] ?? 'images/image-preview.png',
                          fit: BoxFit.cover,
                        )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          maxLines: 20,
                          project?.description ?? '',
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
                          project?.description ?? '',
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
                        child: Expanded(
                            child: Image.asset(
                          project?.assets[1] ?? 'images/image-preview.png',
                          fit: BoxFit.cover,
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(color: Colors.green),
                        child: Expanded(
                            child: Image.asset(
                          project?.assets[2] ?? 'images/image-preview.png',
                          fit: BoxFit.cover,
                        )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          maxLines: 20,
                          project?.description ?? '',
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
            )
          ],
        ),
      ),
    );
  }
}
