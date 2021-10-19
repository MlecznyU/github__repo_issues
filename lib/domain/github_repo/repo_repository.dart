import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';

abstract class RepoRepository {
  Future<List<RepoModel>> getRepositories({
    required String ownerName,
    String remoName,
    SortType sortType = SortType.created,
    SortDirection sortDirection = SortDirection.asc,
    // Results per page
    int limit = 10,
    // Page number of the results
    int page = 1,
  });

  // returns total number of pages for last getRepositories call
  // if getRepositories method was not called or any other problems occurred, then the returned value will be 0
  int getNumberOfPages();
}
