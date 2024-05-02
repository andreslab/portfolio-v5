import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/topic.dart';
import 'package:porfolio/providers/constants.dart';
import 'dart:convert';

class ContactProvider extends ChangeNotifier {
  Topic topics = Topic(data: []);

  ContactProvider() {
    getTopics();
  }

  getTopics() async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/contacts');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response topics: ${response.body}');
        topics = topicFromJson(response.body);
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  sendMessage(topic, email, detail) async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/messages');
      var body = jsonEncode({'topic': topic, 'email': email, 'detail': detail});

      var headers = {
        'Content-Type': 'application/json',
      };
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        print('Message sent: ${response.body}');
        // notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
