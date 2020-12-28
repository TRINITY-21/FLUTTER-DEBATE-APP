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
  String updatedAt;
  bool approved;
  int view_counts;
  String filePath;

  @JsonKey(name: '_id')
  String id;
  

  ListDebatesModel(
      {this.filePath, this.approved, this.topic, this.createdAt, this.updatedAt, this.body, this.id, this.pic, this.view_counts, this.writer});

  factory ListDebatesModel.fromJson(Map<String, dynamic> json) =>
      _$ListDebatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListDebatesModelToJson(this);
}
