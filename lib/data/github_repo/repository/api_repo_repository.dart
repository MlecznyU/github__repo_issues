import 'package:tech_challenge_flutter/data/github_repo/dao/api_rest_repo_dao.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_repo_model.dart';
import 'package:tech_challenge_flutter/data/utils.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_repository.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';

class ApiRepoRepository implements RepoRepository {
  final ApiRestRepoDao _apiRestRepoDao;

  ApiRepoRepository(this._apiRestRepoDao);

  @override
  Future<Pair<List<RepoModel>, int>> getRepositoriesWithNumberOfPages({
    required String ownerName,
    String remoName = '',
    SortType sortType = SortType.created,
    SortDirection sortDirection = SortDirection.asc,
    int limit = 10,
    int page = 1,
  }) async {
    final response = await _apiRestRepoDao.getRepos(
      userName: ownerName,
      sortType: sortType.toQueryPar(),
      limit: limit,
      sortDirection: sortDirection.toQueryPar(),
      page: page,
    );

    return Pair(response.repoList.map((ApiRepoModel model) => model.toDomain()).toList(), response.totalCount ~/ limit);
  }
}
