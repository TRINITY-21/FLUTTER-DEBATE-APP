// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listDebatesModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDebatesModel _$ListDebatesModelFromJson(Map<String, dynamic> json) {
  return ListDebatesModel(
    filePath: json['filePath'] as String,
    age: json['age'] as String,
    gender: json['gender'] as String,
    summary: json['summary'] as String,
    pics: json['pics'] as String,
    heading: json['heading'] as String,
    leaders_vision: json['leaders_vision'] as String,
    approved: json['approved'] as bool,
    topic: json['topic'] as String,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    body: json['body'] as String,
    id: json['_id'] as String,
    video: json['video'] as String,
    debate_article: json['debate_article'] as String,
    pic: json['pic'] as String,
    view_counts: json['view_counts'] as int,
    writer: json['writer'] == null
        ? null
        : RegistersModel.fromJson(json['writer'] as Map<String, dynamic>),
  )
    ..name = json['name'] as String
    ..issue_area = json['issue_area'] as String;
}

Map<String, dynamic> _$ListDebatesModelToJson(ListDebatesModel instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'body': instance.body,
      'pic': instance.pic,
      'writer': instance.writer,
      'createdAt': instance.createdAt,
      'name': instance.name,
      'issue_area': instance.issue_area,
      'updatedAt': instance.updatedAt,
      'approved': instance.approved,
      'view_counts': instance.view_counts,
      'filePath': instance.filePath,
      'debate_article': instance.debate_article,
      'summary': instance.summary,
      'heading': instance.heading,
      'gender': instance.gender,
      'video': instance.video,
      'pics': instance.pics,
      'age': instance.age,
      'leaders_vision': instance.leaders_vision,
      '_id': instance.id,
    };
