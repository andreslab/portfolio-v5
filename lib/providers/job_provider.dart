import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/job.dart';
import 'package:porfolio/providers/constants.dart';

class JobProvider extends ChangeNotifier {
  Job jobs = Job(data: []);

  JobProvider() {
    getJobs();
  }

  getJobs() async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/jobs');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response jobs: ${response.body}');
        jobs = jobFromJson(response.body);
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
