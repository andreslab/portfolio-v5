import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/personal.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ProfileProvider extends ChangeNotifier {
  final String? _baseUrl = dotenv.get('BASE_URL', fallback: '0.0.0.0:3000');

  Personal personal = Personal();

  ProfileProvider() {
    getOnUserDataDisplay();
  }

  Future<void> getOnUserDataDisplay() async {
    try {
      var url = Uri.parse('$_baseUrl/personal');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response profile: ${response.body}');
        personal = personalFromJson(response.body);
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
