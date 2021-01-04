import 'package:debate/api/registerModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listDebatesModel.g.dart';

@JsonSerializable()
class ListDebatesModel {
  String topic;
  String body;
  String pic;
  RegistersModel writer;
  String createdAt;
  String name;
  String comment;
  // String issue_area;
  String updatedAt;
  bool approved;
  int view_counts;
  String filePath;
  String debate_article;
  String leaders_vision;
  String summary;
  String heading;
  String gender;
  String pics;
  String article;
  String age;
  String video;

  @JsonKey(name: '_id')
  String id;

  ListDebatesModel(
      {this.filePath,
      this.age,
      this.leaders_vision,
      this.gender,
      this.summary,
      this.pics,
      this.heading,
      this.approved,
      this.topic,
      this.createdAt,
      this.updatedAt,
      this.body,
      this.article,
      this.id,
      this.comment,
      this.debate_article,
      this.pic,
      this.view_counts,
      // this.issue_area,
      this.name,
      this.video,
      this.writer});

  factory ListDebatesModel.fromJson(Map<String, dynamic> json) =>
      _$ListDebatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListDebatesModelToJson(this);
}
