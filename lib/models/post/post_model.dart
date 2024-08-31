import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
  int? randomTime;
  bool? isSaved;

  PostModel({this.userId, this.id, this.title, this.body, this.isSaved});

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
