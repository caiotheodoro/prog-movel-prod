import 'dart:convert';

List<PostModel> postModelFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String postModelToJson(List<PostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostModel {
  PostModel({
    this.id,
    required this.content,
    required this.image,
    this.userId,
    this.createdAt,
  });

  String? id;
  String content;
  String image;
  int? userId;
  String? createdAt;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json["id"],
        content: json["content"],
        image: json["image"],
        userId: json["userId"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toJson() => {
        "todo_id": id,
        "content": content,
        "image": image,
        "userId": userId,
        "createdAt": createdAt
      };
}
