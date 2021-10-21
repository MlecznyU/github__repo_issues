import 'package:tech_challenge_flutter/domain/github_issue/issue_model.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';

abstract class IssueRepository {
  Future<Pair<List<IssueModel>, int>> getIssuesWithNumberOfPages({
    // owner/repoName
    required String repositoryFullName,
    SortType sortType = SortType.created,
    SortDirection sortDirection = SortDirection.asc,
    // Results per page
    int limit = 10,
    // Page number of the results
    int page = 1,
  });
}
