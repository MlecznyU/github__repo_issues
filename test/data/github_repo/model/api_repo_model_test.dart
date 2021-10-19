import 'package:flutter_test/flutter_test.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_owner_model.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_repo_model.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart';

void main() {
  test('toDomain method called on ApiRepoModel returns domain model with mapped data', () {
    const avatarUrl = 'avatarUrl';
    const ownerId = 2;
    const repoId = 1;
    const repoName = 'repoName';
    const ownerName = 'ownerName';
    const fullName = 'repoFullName';
    const ApiOwnerModel apiOwnerModel = ApiOwnerModel(avatarUrl: avatarUrl, id: ownerId, name: ownerName);
    const ApiRepoModel apiRepoModel =
        ApiRepoModel(name: repoName, fullName: fullName, ownerModel: apiOwnerModel, id: repoId);

    expect(
      apiRepoModel.toDomain(),
      const RepoModel(
        repoId: 1,
        repoName: repoName,
        ownerName: ownerName,
        fullName: fullName,
        ownerAvatar: avatarUrl,
      ),
    );
  });
}
