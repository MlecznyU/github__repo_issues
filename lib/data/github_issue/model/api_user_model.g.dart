// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiUserModel _$$_ApiUserModelFromJson(Map<String, dynamic> json) =>
    _$_ApiUserModel(
      userName: json['login'] as String,
      userAvatar: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$_ApiUserModelToJson(_$_ApiUserModel instance) =>
    <String, dynamic>{
      'login': instance.userName,
      'avatar_url': instance.userAvatar,
    };
