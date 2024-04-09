// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

class Category {
  List<CategoryDatum> data;

  Category({
    required this.data,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        data: List<CategoryDatum>.from(
            json["data"].map((x) => CategoryDatum.fromJson(x))),
      );
}

class CategoryDatum {
  int id;
  CategoryAttributes attributes;

  CategoryDatum({
    required this.id,
    required this.attributes,
  });

  factory CategoryDatum.fromJson(Map<String, dynamic> json) => CategoryDatum(
        id: json["id"],
        attributes: CategoryAttributes.fromJson(json["attributes"]),
      );
}

class CategoryAttributes {
  String name;

  CategoryAttributes({
    required this.name,
  });

  factory CategoryAttributes.fromJson(Map<String, dynamic> json) =>
      CategoryAttributes(
        name: json["name"],
      );
}
