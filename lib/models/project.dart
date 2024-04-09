// To parse this JSON data, do
//
//     final project = projectFromJson(jsonString);

import 'dart:convert';

Project projectFromJson(String str) => Project.fromJson(json.decode(str));

class Project {
  List<ProjectDatum> data;

  Project({
    required this.data,
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        data: List<ProjectDatum>.from(
            json["data"].map((x) => ProjectDatum.fromJson(x))),
      );
}

class ProjectDatum {
  int id;
  PurpleAttributes attributes;

  ProjectDatum({
    required this.id,
    required this.attributes,
  });

  factory ProjectDatum.fromJson(Map<String, dynamic> json) => ProjectDatum(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
      );
}

class PurpleAttributes {
  String title;
  DateTime createAt;
  String? description;
  String? link;
  Assets? assets;
  bool? pin;

  PurpleAttributes({
    required this.title,
    required this.createAt,
    this.description,
    this.link,
    this.assets,
    this.pin,
  });

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
        title: json["title"],
        createAt: DateTime.parse(json["createAt"]),
        // description: json["description"] != null ? json["description"] : null,
        description: '',
        link: json["link"] != null ? json["link"] : null,
        assets: json["assets"] != null ? Assets.fromJson(json["assets"]) : null,
        pin: json["pin"],
      );
}

class Assets {
  List<AssetsDatum> data;

  Assets({
    required this.data,
  });

  factory Assets.fromJson(Map<String, dynamic> json) => Assets(
        data: List<AssetsDatum>.from(
            json["data"].map((x) => AssetsDatum.fromJson(x))),
      );
}

class AssetsDatum {
  int id;
  FluffyAttributes attributes;

  AssetsDatum({
    required this.id,
    required this.attributes,
  });

  factory AssetsDatum.fromJson(Map<String, dynamic> json) => AssetsDatum(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
      );
}

class FluffyAttributes {
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  String formats;
  String hash;
  String ext;
  String mime;
  int size;
  String url;
  String previewUrl;
  String provider;
  String providerMetadata;
  Related related;
  Folder folder;
  String folderPath;
  DateTime createdAt;
  DateTime updatedAt;
  CreatedBy createdBy;
  CreatedBy updatedBy;

  FluffyAttributes({
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.providerMetadata,
    required this.related,
    required this.folder,
    required this.folderPath,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) =>
      FluffyAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: json["formats"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"],
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        related: Related.fromJson(json["related"]),
        folder: Folder.fromJson(json["folder"]),
        folderPath: json["folderPath"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        createdBy: CreatedBy.fromJson(json["createdBy"]),
        updatedBy: CreatedBy.fromJson(json["updatedBy"]),
      );
}

class CreatedBy {
  CreatedByData data;

  CreatedBy({
    required this.data,
  });

  factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        data: CreatedByData.fromJson(json["data"]),
      );
}

class CreatedByData {
  int id;
  TentacledAttributes attributes;

  CreatedByData({
    required this.id,
    required this.attributes,
  });

  factory CreatedByData.fromJson(Map<String, dynamic> json) => CreatedByData(
        id: json["id"],
        attributes: TentacledAttributes.fromJson(json["attributes"]),
      );
}

class TentacledAttributes {
  TentacledAttributes();

  factory TentacledAttributes.fromJson(Map<String, dynamic> json) =>
      TentacledAttributes();
}

class Folder {
  Data data;

  Folder({
    required this.data,
  });

  factory Folder.fromJson(Map<String, dynamic> json) => Folder(
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  int id;
  StickyAttributes attributes;

  Data({
    required this.id,
    required this.attributes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: StickyAttributes.fromJson(json["attributes"]),
      );
}

class StickyAttributes {
  String name;
  int pathId;
  CreatedBy parent;
  Related children;
  Files files;
  String path;
  DateTime createdAt;
  DateTime updatedAt;
  CreatedBy createdBy;
  CreatedBy updatedBy;

  StickyAttributes({
    required this.name,
    required this.pathId,
    required this.parent,
    required this.children,
    required this.files,
    required this.path,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory StickyAttributes.fromJson(Map<String, dynamic> json) =>
      StickyAttributes(
        name: json["name"],
        pathId: json["pathId"],
        parent: CreatedBy.fromJson(json["parent"]),
        children: Related.fromJson(json["children"]),
        files: Files.fromJson(json["files"]),
        path: json["path"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        createdBy: CreatedBy.fromJson(json["createdBy"]),
        updatedBy: CreatedBy.fromJson(json["updatedBy"]),
      );
}

class Related {
  List<CreatedByData> data;

  Related({
    required this.data,
  });

  factory Related.fromJson(Map<String, dynamic> json) => Related(
        data: List<CreatedByData>.from(
            json["data"].map((x) => CreatedByData.fromJson(x))),
      );
}

class Files {
  List<FilesDatum> data;

  Files({
    required this.data,
  });

  factory Files.fromJson(Map<String, dynamic> json) => Files(
        data: List<FilesDatum>.from(
            json["data"].map((x) => FilesDatum.fromJson(x))),
      );
}

class FilesDatum {
  int id;
  IndigoAttributes attributes;

  FilesDatum({
    required this.id,
    required this.attributes,
  });

  factory FilesDatum.fromJson(Map<String, dynamic> json) => FilesDatum(
        id: json["id"],
        attributes: IndigoAttributes.fromJson(json["attributes"]),
      );
}

class IndigoAttributes {
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  String formats;
  String hash;
  String ext;
  String mime;
  int size;
  String url;
  String previewUrl;
  String provider;
  String providerMetadata;
  Related related;
  CreatedBy folder;
  String folderPath;
  DateTime createdAt;
  DateTime updatedAt;
  CreatedBy createdBy;
  CreatedBy updatedBy;

  IndigoAttributes({
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.providerMetadata,
    required this.related,
    required this.folder,
    required this.folderPath,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory IndigoAttributes.fromJson(Map<String, dynamic> json) =>
      IndigoAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: json["formats"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"],
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        related: Related.fromJson(json["related"]),
        folder: CreatedBy.fromJson(json["folder"]),
        folderPath: json["folderPath"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        createdBy: CreatedBy.fromJson(json["createdBy"]),
        updatedBy: CreatedBy.fromJson(json["updatedBy"]),
      );
}
