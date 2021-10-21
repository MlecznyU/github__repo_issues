import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_model.dart';

import 'api_user_model.dart';

part 'api_issue_model.freezed.dart';
part 'api_issue_model.g.dart';

@freezed
class ApiIssueModel with _$ApiIssueModel {
  const factory ApiIssueModel({
    @JsonKey(name: 'number') required int number,
    @JsonKey(name: 'title') required String issueTitle,
    @JsonKey(name: 'user') required ApiUserModel author,
    @JsonKey(name: 'state') required bool open,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'closed_at') required DateTime? closedAt,
  }) = _ApiIssueModel;

  factory ApiIssueModel.fromJson(Map<String, dynamic> json) => _$ApiIssueModelFromJson(json);
}

extension Mapper on ApiIssueModel {
  IssueModel toDomain() => IssueModel(
        author: author.userName,
        closedAt: closedAt,
        createdAt: createdAt,
        issueNumber: number,
        issueTitle: issueTitle,
        open: open,
      );
}
