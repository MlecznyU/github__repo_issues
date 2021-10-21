import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_repo_model.dart';

part 'api_repo_response_model.freezed.dart';
part 'api_repo_response_model.g.dart';

@freezed
class ApiRepoResponseModel with _$ApiRepoResponseModel {
  const factory ApiRepoResponseModel({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'items') required List<ApiRepoModel> repoList,
  }) = _ApiRepoResponseModell;

  factory ApiRepoResponseModel.fromJson(Map<String, dynamic> json) => _$ApiRepoResponseModelFromJson(json);
}
