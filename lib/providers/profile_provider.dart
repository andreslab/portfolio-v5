import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/profile.dart';
import 'package:porfolio/providers/constants.dart';

class ProfileProvider extends ChangeNotifier {
  Profile personal = Profile(
      id: "",
      name: "",
      role: "",
      resume: "",
      cv: "",
      github: "",
      twitter: "",
      linkedin: "",
      v: 0);

  ProfileProvider() {
    getOnUserDataDisplay();
  }

  Future<void> getOnUserDataDisplay() async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/profile');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response profile: ${response.body}');
        personal = profileFromJson(response.body);
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
