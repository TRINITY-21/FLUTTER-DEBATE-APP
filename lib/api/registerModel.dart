import 'package:json_annotation/json_annotation.dart';

part 'registerModel.g.dart';

@JsonSerializable()
class RegistersModel {
  String name;
  String email;
  String password;
  String lastname;
  String createdAt;
  String updatedAt;
  String image;

  @JsonKey(name: '_id')
  String id;
  String token;

  RegistersModel(
      {this.email,
      this.createdAt,
      this.updatedAt,
      this.lastname,
      this.token,
      this.image,
      this.id,
      this.name,
      this.password});

  factory RegistersModel.fromJson(Map<String, dynamic> json) =>
      _$RegistersModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegistersModelToJson(this);
}
