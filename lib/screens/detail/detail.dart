import 'package:flutter/material.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/contact/contact.dart';
import 'package:porfolio/widgets/contact/widgets/contact_form.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
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
                        'Title project',
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
                          'images/image-preview.png',
                          fit: BoxFit.cover,
                        )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          maxLines: 20,
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
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
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
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
                          'images/image-preview.png',
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
                          'images/image-preview.png',
                          fit: BoxFit.cover,
                        )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          maxLines: 20,
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                          textAlign: TextAlign.justify,
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
