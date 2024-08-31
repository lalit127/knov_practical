import 'package:json_annotation/json_annotation.dart';

part 'post_detail_model.g.dart'; // This file will be generated

@JsonSerializable()
class PostDetailModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostDetailModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  // Factory method to create a PostModel instance from JSON
  factory PostDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PostDetailModelFromJson(json);

  // Method to convert PostModel instance to JSON
  Map<String, dynamic> toJson() => _$PostDetailModelToJson(this);
}
