// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_issue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiIssueModel _$$_ApiIssueModelFromJson(Map<String, dynamic> json) =>
    _$_ApiIssueModel(
      number: json['number'] as int,
      issueTitle: json['title'] as String,
      author: ApiUserModel.fromJson(json['user'] as Map<String, dynamic>),
      open: json['state'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      closedAt: json['closed_at'] == null
          ? null
          : DateTime.parse(json['closed_at'] as String),
    );

Map<String, dynamic> _$$_ApiIssueModelToJson(_$_ApiIssueModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'title': instance.issueTitle,
      'user': instance.author,
      'state': instance.open,
      'created_at': instance.createdAt.toIso8601String(),
      'closed_at': instance.closedAt?.toIso8601String(),
    };
