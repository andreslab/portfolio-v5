import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/constants.dart';

class InstituteProvider extends ChangeNotifier {
  List<Study> institutes = [];

  InstituteProvider() {
    getAcademics();
  }

  getAcademics() async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/studies');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response institute: ${response.body}');
        institutes.addAll(studyFromJson(response.body));
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
