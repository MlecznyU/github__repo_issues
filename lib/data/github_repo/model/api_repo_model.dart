import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_owner_model.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart';

part 'api_repo_model.freezed.dart';
part 'api_repo_model.g.dart';

@freezed
class ApiRepoModel with _$ApiRepoModel {
  const factory ApiRepoModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'owner') required ApiOwnerModel ownerModel,
  }) = _ApiRepoModel;

  factory ApiRepoModel.fromJson(Map<String, dynamic> json) => _$ApiRepoModelFromJson(json);
}

extension Mapper on ApiRepoModel {
  RepoModel toDomain() => RepoModel(
        repoId: id,
        repoName: name,
        ownerName: ownerModel.name,
        ownerAvatar: ownerModel.avatarUrl,
        fullName: fullName,
      );
}
