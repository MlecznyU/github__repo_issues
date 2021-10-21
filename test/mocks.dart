import 'package:mockito/annotations.dart';
import 'package:tech_challenge_flutter/data/github_issue/dao/api_rest_issue_dao.dart';
import 'package:tech_challenge_flutter/data/github_repo/dao/api_rest_repo_dao.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_repository.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_repository.dart';

@GenerateMocks([RepoRepository, ApiRestRepoDao, ApiRestIssueDao, IssueRepository])
void main() {}
