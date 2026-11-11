import 'dart:convert';

List<ElectronicsModel> electronicsModelFromJson(String str) =>
    List<ElectronicsModel>.from(json.decode(str).map((x) => ElectronicsModel.fromJson(x)));

class ElectronicsModel {
  int id;
  String title;
  num price;
  String description;
  String image;

  ElectronicsModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ElectronicsModel.fromJson(Map<String, dynamic> json) => ElectronicsModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"] ?? "",
        image: json["image"] ?? "",
      );
}