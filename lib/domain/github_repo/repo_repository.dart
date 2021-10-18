import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';

abstract class RepoRepository {
  Future<List<RepoModel>> getRepositories({
    String remoName,
    SortType sortType = SortType.created,
    SortDirection sortDirection = SortDirection.asc,
    // Results per page
    int limit = 10,
    // Page number of the results
    int page = 1,
  });

  Future<int> getNumberOfPagesForGivenRepoName({String name, int resultsPerPage = 10});
}
