// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listDebatesModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDebatesModel _$ListDebatesModelFromJson(Map<String, dynamic> json) {
  return ListDebatesModel(
    filePath: json['filePath'] as String,
    approved: json['approved'] as bool,
    topic: json['topic'] as String,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    body: json['body'] as String,
    id: json['_id'] as String,
    pic: json['pic'] as String,
    view_counts: json['view_counts'] as int,
    writer: json['writer'] == null
        ? null
        : RegistersModel.fromJson(json['writer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListDebatesModelToJson(ListDebatesModel instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'body': instance.body,
      'pic': instance.pic,
      'writer': instance.writer,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'approved': instance.approved,
      'view_counts': instance.view_counts,
      'filePath': instance.filePath,
      '_id': instance.id,
    };
