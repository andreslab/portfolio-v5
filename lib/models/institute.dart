// To parse this JSON data, do
//
//     final institute = instituteFromJson(jsonString);

import 'dart:convert';

Institute instituteFromJson(String str) => Institute.fromJson(json.decode(str));

class Institute {
  List<InstituteDatum> data;

  Institute({
    required this.data,
  });

  factory Institute.fromJson(Map<String, dynamic> json) => Institute(
        data: List<InstituteDatum>.from(
            json["data"].map((x) => InstituteDatum.fromJson(x))),
      );
}

class InstituteDatum {
  int id;
  InstituteAttributes attributes;

  InstituteDatum({
    required this.id,
    required this.attributes,
  });

  factory InstituteDatum.fromJson(Map<String, dynamic> json) => InstituteDatum(
        id: json["id"],
        attributes: InstituteAttributes.fromJson(json["attributes"]),
      );
}

class InstituteAttributes {
  String name;
  DateTime startDate;
  DateTime? endDate;
  String career;

  InstituteAttributes({
    required this.name,
    required this.startDate,
    this.endDate,
    required this.career,
  });

  factory InstituteAttributes.fromJson(Map<String, dynamic> json) =>
      InstituteAttributes(
        name: json["name"],
        startDate: DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] != null ? DateTime.parse(json["endDate"]) : null,
        career: json["career"],
      );
}
