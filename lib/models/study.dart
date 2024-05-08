// To parse this JSON data, do
//
//     final study = studyFromJson(jsonString);

import 'dart:convert';

List<Study> studyFromJson(String str) =>
    List<Study>.from(json.decode(str).map((x) => Study.fromJson(x)));

String studyToJson(List<Study> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Study {
  String id;
  String institute;
  String startDate;
  String endDate;
  String title;
  int v;

  Study({
    required this.id,
    required this.institute,
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.v,
  });

  factory Study.fromJson(Map<String, dynamic> json) => Study(
        id: json["_id"],
        institute: json["institute"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        title: json["title"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "institute": institute,
        "startDate": startDate,
        "endDate": endDate,
        "title": title,
        "__v": v,
      };
}
