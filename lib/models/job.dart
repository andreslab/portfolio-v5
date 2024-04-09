// To parse this JSON data, do
//
//     final job = jobFromJson(jsonString);

import 'dart:convert';

Job jobFromJson(String str) => Job.fromJson(json.decode(str));

class Job {
  List<JobDatum> data;

  Job({
    required this.data,
  });

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        data:
            List<JobDatum>.from(json["data"].map((x) => JobDatum.fromJson(x))),
      );
}

class JobDatum {
  int id;
  JobAttributes attributes;

  JobDatum({
    required this.id,
    required this.attributes,
  });

  factory JobDatum.fromJson(Map<String, dynamic> json) => JobDatum(
        id: json["id"],
        attributes: JobAttributes.fromJson(json["attributes"]),
      );
}

class JobAttributes {
  String company;
  String role;
  DateTime startDate;
  DateTime? endDate;
  String description;

  JobAttributes({
    required this.company,
    required this.role,
    required this.startDate,
    this.endDate,
    required this.description,
  });

  factory JobAttributes.fromJson(Map<String, dynamic> json) => JobAttributes(
        company: json["company"],
        role: json["role"],
        startDate: DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] != null ? DateTime.parse(json["endDate"]) : null,
        description: json["description"],
      );
}
