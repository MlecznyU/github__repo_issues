import 'package:injectable/injectable.dart';
import 'package:tech_challenge_flutter/data/github_issue/repository/api_issue_repository.dart';
import 'package:tech_challenge_flutter/data/github_repo/repository/api_repo_repository.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_repository.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_repository.dart';

@module
abstract class RepositoryModule {
  @LazySingleton(as: RepoRepository)
  ApiRepoRepository get repoRepository;

  @LazySingleton(as: IssueRepository)
  ApiIssueRepository get issueRepository;
}
