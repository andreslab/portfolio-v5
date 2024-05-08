// To parse this JSON data, do
//
//     final skill = skillFromJson(jsonString);

import 'dart:convert';

List<Skill> skillFromJson(String str) =>
    List<Skill>.from(json.decode(str).map((x) => Skill.fromJson(x)));

String skillToJson(List<Skill> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Skill {
  String id;
  String title;
  String category;
  int v;

  Skill({
    required this.id,
    required this.title,
    required this.category,
    required this.v,
  });

  factory Skill.fromJson(Map<String, dynamic> json) => Skill(
        id: json["_id"],
        title: json["title"],
        category: json["category"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "category": category,
        "__v": v,
      };
}
