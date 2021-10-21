import 'package:flutter_test/flutter_test.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_issue_model.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_user_model.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_model.dart';

void main() {
  test('toDomain method called on ApiRepoModel returns domain model with mapped data', () {
    const avatarUrl = 'avatarUrl';
    const number = 1;
    const open = false;
    const userName = 'userName';
    const title = 'title';
    final createdAt = DateTime(1999);
    final closedAt = DateTime(2000);
    const ApiUserModel apiUserModel = ApiUserModel(userName: userName, userAvatar: avatarUrl);
    final ApiIssueModel apiRepoModel = ApiIssueModel(
        open: open, issueTitle: title, author: apiUserModel, number: number, createdAt: createdAt, closedAt: closedAt);

    expect(
      apiRepoModel.toDomain(),
      IssueModel(
        closedAt: closedAt,
        createdAt: createdAt,
        author: userName,
        issueTitle: title,
        issueNumber: number,
        open: open,
      ),
    );
  });
}
