import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_owner_model.dart';

part 'api_repo_model.freezed.dart';
part 'api_repo_model.g.dart';

@freezed
class ApiRepoModel with _$ApiRepoModel {
  const factory ApiRepoModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'owner') required ApiOwnerModel ownerModel,
  }) = _ApiRepoModel;

  factory ApiRepoModel.fromJson(Map<String, dynamic> json) => _$ApiRepoModelFromJson(json);
}
