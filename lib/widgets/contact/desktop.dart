import 'package:flutter/material.dart';
import 'package:porfolio/widgets/contact/widgets/body.dart';
import 'package:porfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:porfolio/screens/utils.dart';

import '../../theme/app_theme.dart';

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Body(
      platform: Platform.desktop,
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

  @override
  void dispose() {
    _titleController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: 'Title',
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
              String title = _titleController.text;
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
      ),
    );
  }
}
