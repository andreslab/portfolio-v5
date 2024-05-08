// To parse this JSON data, do
//
//     final job = jobFromJson(jsonString);

import 'dart:convert';

List<Job> jobFromJson(String str) =>
    List<Job>.from(json.decode(str).map((x) => Job.fromJson(x)));

String jobToJson(List<Job> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Job {
  String id;
  String company;
  String role;
  String startDate;
  String endDate;
  String description;
  int v;

  Job({
    required this.id,
    required this.company,
    required this.role,
    required this.startDate,
    required this.endDate,
    required this.description,
    required this.v,
  });

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        id: json["_id"],
        company: json["company"],
        role: json["role"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        description: json["description"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "company": company,
        "role": role,
        "startDate": startDate,
        "endDate": endDate,
        "description": description,
        "__v": v,
      };
}
