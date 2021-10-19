// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiOwnerModel _$$_ApiOwnerModelFromJson(Map<String, dynamic> json) =>
    _$_ApiOwnerModel(
      id: json['id'] as int,
      name: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$_ApiOwnerModelToJson(_$_ApiOwnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.name,
      'avatar_url': instance.avatarUrl,
    };
