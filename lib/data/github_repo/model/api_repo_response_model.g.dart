// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repo_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiRepoResponseModell _$$_ApiRepoResponseModellFromJson(
        Map<String, dynamic> json) =>
    _$_ApiRepoResponseModell(
      totalCount: json['total_count'] as int,
      repoList: (json['items'] as List<dynamic>)
          .map((e) => ApiRepoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiRepoResponseModellToJson(
        _$_ApiRepoResponseModell instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.repoList,
    };
