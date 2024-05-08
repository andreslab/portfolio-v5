// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  String id;
  String name;
  String role;
  String resume;
  String cv;
  String github;
  String twitter;
  String linkedin;
  int v;

  Profile({
    required this.id,
    required this.name,
    required this.role,
    required this.resume,
    required this.cv,
    required this.github,
    required this.twitter,
    required this.linkedin,
    required this.v,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["_id"],
        name: json["name"],
        role: json["role"],
        resume: json["resume"],
        cv: json["cv"],
        github: json["github"],
        twitter: json["twitter"],
        linkedin: json["linkedin"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "role": role,
        "resume": resume,
        "cv": cv,
        "github": github,
        "twitter": twitter,
        "linkedin": linkedin,
        "__v": v,
      };
}
