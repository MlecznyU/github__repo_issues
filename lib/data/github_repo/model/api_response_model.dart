import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_repo_model.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@freezed
class ApiResponseModel with _$ApiResponseModel {
  const factory ApiResponseModel({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'items') required List<ApiRepoModel> repoList,
  }) = _ApiResponseModel;

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) => _$ApiResponseModelFromJson(json);
}
