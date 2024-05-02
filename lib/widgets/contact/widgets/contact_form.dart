import 'package:flutter/material.dart';
import 'package:porfolio/providers/providers.dart';
import 'package:porfolio/theme/app_theme.dart';
import 'package:provider/provider.dart';

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
    final contactProvider = Provider.of<ContactProvider>(context);
    final topics =
        contactProvider.topics.data.map((e) => e.attributes.subject).toList();
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
            contactProvider.sendMessage(title, email, content);
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
