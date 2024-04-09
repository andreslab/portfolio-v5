import 'package:flutter/material.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

import 'package:porfolio/models/models.dart';

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
    final height = size.height * 0.5;
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Get in touch',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Row(
            children: [
              Expanded(child: ContactForm()),
              Container(
                width: width * 0.4,
                child: Image.asset('images/image-preview.png'),
              )
            ],
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
    final height = size.height * 0.5;
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Get in touch',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ContactForm(),
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
    final height = size.height;
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Text(
              'Get in touch',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ContactForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  String dropdownValue = 'Make a job offer';

  @override
  void dispose() {
    _titleController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final topicProvider = Provider.of<TopicsProvider>(context);
    final topics =
        topicProvider.topics.data.map((e) => e.attributes.subject).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Visibility(
          visible: topics.isNotEmpty,
          child: DropdownButtonFormField<String>(
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            decoration: InputDecoration(
              labelText: 'Topic',
            ),
            items: topics.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email',
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20.0),
        TextFormField(
          controller: _contentController,
          // decoration: InputDecoration(
          //   labelText: 'Content',

          // ),
          maxLines: 5,
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Handle form submission
            String title = dropdownValue;
            String email = _emailController.text;
            String content = _contentController.text;

            // Here, you can handle the form data accordingly, like sending an email, storing in database, etc.
            print('Title: $title');
            print('Email: $email');
            print('Content: $content');
          },
          child: Text(
            'Submit',
            style: AppTheme.buttonLarge,
          ),
        ),
      ],
    );
  }
}
