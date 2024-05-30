import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/project.dart';
import 'package:porfolio/providers/constants.dart';

class ProjectProvider extends ChangeNotifier {
  List<Project> projects = [];
  Project? currentProject;
  bool hasCompleteList = false;

  ProjectProvider() {
    getPrimeProjects();
  }

  getProjects() async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/projects');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response projects: ${response.body}');
        projects = projectFromJson(response.body);
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  getPrimeProjects() async {
    if (hasCompleteList) return;
    try {
      var url = Uri.parse('${Environment.apiUrl}/projects/prime');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response prime projects: ${response.body}');
        projects = projectFromJson(response.body);
        hasCompleteList = true;
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  getProjectsByName(nameUrl) async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/projects/$nameUrl');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response prime projects: ${response.body}');
        currentProject = projectFromJson(response.body).first;
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
