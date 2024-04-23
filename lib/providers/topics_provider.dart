import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/topic.dart';
import 'package:porfolio/providers/constants.dart';

class TopicsProvider extends ChangeNotifier {
  Topic topics = Topic(data: []);

  TopicsProvider() {
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
}
