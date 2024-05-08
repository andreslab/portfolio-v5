// To parse this JSON data, do
//
//     final project = projectFromJson(jsonString);

import 'dart:convert';

List<Project> projectFromJson(String str) =>
    List<Project>.from(json.decode(str).map((x) => Project.fromJson(x)));

String projectToJson(List<Project> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Project {
  String id;
  String title;
  String status;
  String description;
  bool isPrime;
  List<dynamic> assets;
  int v;

  Project({
    required this.id,
    required this.title,
    required this.status,
    required this.description,
    required this.isPrime,
    required this.assets,
    required this.v,
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        id: json["_id"],
        title: json["title"],
        status: json["status"],
        description: json["description"],
        isPrime: json["isPrime"],
        assets: List<dynamic>.from(json["assets"].map((x) => x)),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "status": status,
        "description": description,
        "isPrime": isPrime,
        "assets": List<dynamic>.from(assets.map((x) => x)),
        "__v": v,
      };
}
