// To parse this JSON data, do
//
//     final topic = topicFromJson(jsonString);

import 'dart:convert';

Topic topicFromJson(String str) => Topic.fromJson(json.decode(str));

class Topic {
  List<TopicDatum> data;

  Topic({
    required this.data,
  });

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        data: List<TopicDatum>.from(
            json["data"].map((x) => TopicDatum.fromJson(x))),
      );
}

class TopicDatum {
  int id;
  TopicAttributes attributes;

  TopicDatum({
    required this.id,
    required this.attributes,
  });

  factory TopicDatum.fromJson(Map<String, dynamic> json) => TopicDatum(
        id: json["id"],
        attributes: TopicAttributes.fromJson(json["attributes"]),
      );
}

class TopicAttributes {
  String subject;

  TopicAttributes({
    required this.subject,
  });

  factory TopicAttributes.fromJson(Map<String, dynamic> json) =>
      TopicAttributes(
        subject: json["subject"],
      );
}
