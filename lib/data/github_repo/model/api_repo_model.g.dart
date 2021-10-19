// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiRepoModel _$$_ApiRepoModelFromJson(Map<String, dynamic> json) =>
    _$_ApiRepoModel(
      id: json['id'] as int,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      ownerModel: ApiOwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApiRepoModelToJson(_$_ApiRepoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.ownerModel,
    };
