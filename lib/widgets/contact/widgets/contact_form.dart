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
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = 'Make a job offer';
  }

  @override
  void dispose() {
    _titleController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final contactProvider = Provider.of<ContactProvider>(context);
    final topics = contactProvider.topics.map((e) => e.title).toList();
    if (topics.isNotEmpty) {
      setState(() {
        dropdownValue = topics.first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactProvider>(context);
    final topics = contactProvider.topics.map((e) => e.title).toList();

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

            contactProvider.sendMessage(title, email, content);

            _emailController.clear();
            _contentController.clear();
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
