import 'package:debate/api/listDebatesModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetchDebateModel.g.dart';

@JsonSerializable()
class FetchDebateModel {
  List<ListDebatesModel> article;
  List<ListDebatesModel> leaders_vision;
  List<ListDebatesModel> comments;

  FetchDebateModel({this.article, this.leaders_vision, this.comments});

  factory FetchDebateModel.fromJson(Map<String, dynamic> json) =>
      _$FetchDebateModelFromJson(json);

  Map<String, dynamic> toJson() => _$FetchDebateModelToJson(this);
}
