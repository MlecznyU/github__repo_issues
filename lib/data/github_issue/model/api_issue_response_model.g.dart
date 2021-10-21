// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_issue_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiIssueResponseModel _$$_ApiIssueResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ApiIssueResponseModel(
      totalCount: json['total_count'] as int,
      issueList: (json['items'] as List<dynamic>)
          .map((e) => ApiIssueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiIssueResponseModelToJson(
        _$_ApiIssueResponseModel instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.issueList,
    };
