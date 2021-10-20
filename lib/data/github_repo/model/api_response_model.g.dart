// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponseModel _$$_ApiResponseModelFromJson(Map<String, dynamic> json) =>
    _$_ApiResponseModel(
      totalCount: json['total_count'] as int,
      repoList: (json['items'] as List<dynamic>)
          .map((e) => ApiRepoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiResponseModelToJson(_$_ApiResponseModel instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.repoList,
    };
