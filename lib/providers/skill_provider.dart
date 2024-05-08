import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/job.dart';
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/constants.dart';

class SkillProvider extends ChangeNotifier {
  List<Skill> skills = [];

  SkillProvider() {
    getSkills();
  }

  getSkills() async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/skills');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response skills: ${response.body}');
        skills.addAll(skillFromJson(response.body));
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
