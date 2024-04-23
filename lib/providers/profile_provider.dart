import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/personal.dart';
import 'package:porfolio/providers/constants.dart';

class ProfileProvider extends ChangeNotifier {
  Personal personal = Personal();

  ProfileProvider() {
    getOnUserDataDisplay();
  }

  Future<void> getOnUserDataDisplay() async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/personal');
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
