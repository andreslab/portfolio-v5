import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/job.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class JobProvider extends ChangeNotifier {
  final String? _baseUrl = dotenv.get('BASE_URL', fallback: '0.0.0.0:3000');

  Job jobs = Job(data: []);

  JobProvider() {
    getJobs();
  }

  getJobs() async {
    try {
      var url = Uri.parse('$_baseUrl/jobs');
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
