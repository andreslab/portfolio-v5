// To parse this JSON data, do
//
//     final topic = topicFromJson(jsonString);

import 'dart:convert';

List<Topic> topicFromJson(String str) =>
    List<Topic>.from(json.decode(str).map((x) => Topic.fromJson(x)));

String topicToJson(List<Topic> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Topic {
  String id;
  String title;
  int v;

  Topic({
    required this.id,
    required this.title,
    required this.v,
  });

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        id: json["_id"],
        title: json["title"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "__v": v,
      };
}
