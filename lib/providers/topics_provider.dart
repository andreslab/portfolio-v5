import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/topic.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class TopicsProvider extends ChangeNotifier {
  final String? _baseUrl = dotenv.get('BASE_URL', fallback: '0.0.0.0:3000');

  Topic topics = Topic(data: []);

  TopicsProvider() {
    getTopics();
  }

  getTopics() async {
    try {
      var url = Uri.parse('$_baseUrl/contacts');
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
