// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registerModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistersModel _$RegistersModelFromJson(Map<String, dynamic> json) {
  return RegistersModel(
    email: json['email'] as String,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    lastname: json['lastname'] as String,
    token: json['token'] as String,
    image: json['image'] as String,
    id: json['_id'] as String,
    name: json['name'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$RegistersModelToJson(RegistersModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'lastname': instance.lastname,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'image': instance.image,
      '_id': instance.id,
      'token': instance.token,
    };
