import 'package:tech_challenge_flutter/data/github_issue/dao/api_rest_issue_dao.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_issue_model.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_issue_response_model.dart';
import 'package:tech_challenge_flutter/data/utils.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_model.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_repository.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';

class ApiIssueRepository implements IssueRepository {
  final ApiRestIssueDao _apiRestIssueDao;

  ApiIssueRepository(this._apiRestIssueDao);

  @override
  Future<Pair<List<IssueModel>, int>> getIssuesWithNumberOfPages({
    required String repositoryFullName,
    SortType sortType = SortType.created,
    SortDirection sortDirection = SortDirection.asc,
    int limit = 10,
    int page = 1,
    bool open = true,
  }) async {
    late final ApiIssueResponseModel response;
    if (open) {
      response = await _apiRestIssueDao.getOpenIssues(
        repoFullName: repositoryFullName,
        sortType: sortType.toQueryPar(),
        limit: limit,
        sortDirection: sortDirection.toQueryPar(),
        page: page,
      );
    } else {
      response = await _apiRestIssueDao.getClosedIssues(
        repoFullName: repositoryFullName,
        sortType: sortType.toQueryPar(),
        limit: limit,
        sortDirection: sortDirection.toQueryPar(),
        page: page,
      );
    }

    return Pair(
      response.issueList.map((ApiIssueModel model) => model.toDomain()).toList(),
      (response.totalCount / limit).ceil(),
    );
  }
}
