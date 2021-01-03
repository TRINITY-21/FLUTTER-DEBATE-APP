// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetchDebateModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchDebateModel _$FetchDebateModelFromJson(Map<String, dynamic> json) {
  return FetchDebateModel(
    article: (json['article'] as List)
        ?.map((e) => e == null
            ? null
            : ListDebatesModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    leaders_vision: (json['leaders_vision'] as List)
        ?.map((e) => e == null
            ? null
            : ListDebatesModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FetchDebateModelToJson(FetchDebateModel instance) =>
    <String, dynamic>{
      'article': instance.article,
      'leaders_vision': instance.leaders_vision,
    };
