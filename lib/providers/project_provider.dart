import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/project.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ProjectProvider extends ChangeNotifier {
  final String? _baseUrl = dotenv.get('BASE_URL', fallback: '0.0.0.0:3000');

  Project projects = Project(data: []);

  ProjectProvider() {
    getPrimeProjects();
  }

  getProjects() async {
    try {
      var url = Uri.parse('$_baseUrl/projects');
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
    try {
      var url = Uri.parse('$_baseUrl/projects/prime');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response prime projects: ${response.body}');
        projects = projectFromJson(response.body);
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
