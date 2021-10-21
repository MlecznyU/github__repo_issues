import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_issue_model.dart';

part 'api_issue_response_model.freezed.dart';
part 'api_issue_response_model.g.dart';

@freezed
class ApiIssueResponseModel with _$ApiIssueResponseModel {
  const factory ApiIssueResponseModel({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'items') required List<ApiIssueModel> issueList,
  }) = _ApiIssueResponseModel;

  factory ApiIssueResponseModel.fromJson(Map<String, dynamic> json) => _$ApiIssueResponseModelFromJson(json);
}
