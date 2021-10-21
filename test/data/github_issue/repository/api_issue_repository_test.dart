import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_issue_model.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_issue_response_model.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_user_model.dart';
import 'package:tech_challenge_flutter/data/github_issue/repository/api_issue_repository.dart';
import 'package:tech_challenge_flutter/data/utils.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';

import '../../../mocks.mocks.dart';

late MockApiRestIssueDao _apiRestIssueDao;

void main() {
  setUp(() => _apiRestIssueDao = MockApiRestIssueDao());

  ApiIssueRepository build() => ApiIssueRepository(_apiRestIssueDao);

  const page = 2;
  const limit = 20;
  const sortDir = SortDirection.desc;
  const sortType = SortType.pushed;
  const repoFullName = 'repoFullName';

  test(
    'when getIssuesWithNumberOfPages is called on ApiIssueRepository '
    'getIssues method is called on ApiRestIssueDao with correct data',
    () async {
      when(
        _apiRestIssueDao.getIssues(
          page: page,
          limit: limit,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoFullName: repoFullName,
        ),
        //ignore: warning
      ).thenAnswer((_) => Future.value(const ApiIssueResponseModel(issueList: [], totalCount: 0)));
      await build().getIssuesWithNumberOfPages(
        limit: limit,
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        repositoryFullName: repoFullName,
      );
      verify(
        _apiRestIssueDao.getIssues(
          page: page,
          limit: limit,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoFullName: repoFullName,
        ),
      );
    },
  );

  test(
    'when getIssuesWithNumberOfPages is called on ApiIssueRepository '
    'Pair object is returned with last object numberOfPages',
    () async {
      when(
        _apiRestIssueDao.getIssues(
          page: page,
          limit: 20,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoFullName: repoFullName,
        ),
      ).thenAnswer((_) => Future.value(const ApiIssueResponseModel(issueList: [], totalCount: 200)));
      // limit 20 totalCount 200
      final response = await build().getIssuesWithNumberOfPages(
        limit: 20,
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        repositoryFullName: repoFullName,
      );
      expect(response.last, 10);

      when(
        _apiRestIssueDao.getIssues(
          page: page,
          limit: 10,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoFullName: repoFullName,
        ),
      ).thenAnswer((_) => Future.value(const ApiIssueResponseModel(issueList: [], totalCount: 5000)));
      // limit 10 totalCount 5000
      final response2 = await build().getIssuesWithNumberOfPages(
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        repositoryFullName: repoFullName,
      );
      expect(response2.last, 500);

      when(
        _apiRestIssueDao.getIssues(
          page: page,
          limit: 5,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoFullName: repoFullName,
        ),
      ).thenAnswer((_) => Future.value(const ApiIssueResponseModel(issueList: [], totalCount: 1)));
      // limit 5 totalCount 1
      final response3 = await build().getIssuesWithNumberOfPages(
        limit: 5,
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        repositoryFullName: repoFullName,
      );
      expect(response3.last, 1);
    },
  );

  test(
    'when getIssuesWithNumberOfPages is called on ApiIssueRepository '
    'Pair object is returned with first object list of issueModels',
    () async {
      final apiModel = ApiIssueModel(
        closedAt: DateTime(1999),
        author: const ApiUserModel(userAvatar: 'userAvatar', userName: 'userName'),
        createdAt: DateTime(1998),
        issueTitle: 'issueTitle',
        number: 1,
        openClosed: 'open',
      );

      final apiModel2 = ApiIssueModel(
        closedAt: DateTime(2002),
        author: const ApiUserModel(userAvatar: 'userAvatar2', userName: 'userName2'),
        createdAt: DateTime(2001),
        issueTitle: 'issueTitle2',
        number: 2,
        openClosed: 'closed',
      );

      when(
        _apiRestIssueDao.getIssues(
          page: page,
          limit: limit,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoFullName: repoFullName,
        ),
      ).thenAnswer((_) => Future.value(const ApiIssueResponseModel(issueList: [], totalCount: 200)));
      // limit 20 totalCount 200
      final response = await build().getIssuesWithNumberOfPages(
        limit: 20,
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        repositoryFullName: repoFullName,
      );
      expect(response.first, []);

      when(
        _apiRestIssueDao.getIssues(
          page: page,
          limit: 10,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoFullName: repoFullName,
        ),
      ).thenAnswer((_) => Future.value(ApiIssueResponseModel(issueList: [apiModel, apiModel2], totalCount: 5000)));
      // limit 10 totalCount 5000
      final response2 = await build().getIssuesWithNumberOfPages(
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        repositoryFullName: repoFullName,
      );
      expect(response2.first, [apiModel.toDomain(), apiModel2.toDomain()]);
    },
  );
}
