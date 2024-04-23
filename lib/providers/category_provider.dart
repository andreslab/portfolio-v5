import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:porfolio/models/models.dart';
import 'package:porfolio/providers/constants.dart';

class CategoryProvider extends ChangeNotifier {
  Category categories = Category(data: []);

  CategoryProvider() {
    getCategory();
  }

  getCategory() async {
    try {
      var url = Uri.parse('${Environment.apiUrl}/categories');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print('Response categories: ${response.body}');
        categories = categoryFromJson(response.body);
        notifyListeners();
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
