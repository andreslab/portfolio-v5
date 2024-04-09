// To parse this JSON data, do
//
//     final personal = personalFromJson(jsonString);

import 'dart:convert';

Personal personalFromJson(String str) => Personal.fromJson(json.decode(str));

class Personal {
  PersonalData? data;

  Personal({
    this.data,
  });

  factory Personal.fromJson(Map<String, dynamic> json) => Personal(
        data: PersonalData.fromJson(json["data"]),
      );
}

class PersonalData {
  int id;
  PersonalAttributes attributes;

  PersonalData({
    required this.id,
    required this.attributes,
  });

  factory PersonalData.fromJson(Map<String, dynamic> json) => PersonalData(
        id: json["id"],
        attributes: PersonalAttributes.fromJson(json["attributes"]),
      );
}

class PersonalAttributes {
  String name;
  String role;
  String cv;
  String twitter;
  String github;
  String facebook;
  String instagram;
  String linkedin;

  PersonalAttributes({
    required this.name,
    required this.role,
    required this.cv,
    required this.twitter,
    required this.github,
    required this.facebook,
    required this.instagram,
    required this.linkedin,
  });

  factory PersonalAttributes.fromJson(Map<String, dynamic> json) =>
      PersonalAttributes(
        name: json["name"],
        role: json["role"],
        cv: json["cv"],
        twitter: json["twitter"],
        github: json["github"],
        facebook: json["facebook"],
        instagram: json["instagram"],
        linkedin: json["linkedin"],
      );
}
