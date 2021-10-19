import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_model.freezed.dart';

@freezed
class RepoModel with _$RepoModel {
  const factory RepoModel({
    required int repoId,
    required String repoName,
    required String ownerName,
    required String fullName,
    required String ownerAvatar,
  }) = _RepoModel;
}
