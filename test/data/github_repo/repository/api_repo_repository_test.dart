import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_owner_model.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_repo_model.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_repo_response_model.dart';
import 'package:tech_challenge_flutter/data/github_repo/repository/api_repo_repository.dart';
import 'package:tech_challenge_flutter/data/utils.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';

import '../../../mocks.mocks.dart';

late MockApiRestRepoDao _apiRestRepoDao;

void main() {
  setUp(() => _apiRestRepoDao = MockApiRestRepoDao());

  ApiRepoRepository build() => ApiRepoRepository(_apiRestRepoDao);

  const page = 2;
  const limit = 20;
  const sortDir = SortDirection.desc;
  const sortType = SortType.pushed;
  const name = 'name';

  test(
    'when getRepositoriesWithNumberOfPages is called on ApiRepoRepository '
    'getRepos method is called on ApiRestRepoDao with correct data',
    () async {
      when(
        _apiRestRepoDao.getRepos(
          page: page,
          limit: limit,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoName: name,
        ),
        //ignore: warning
      ).thenAnswer((_) => Future.value(const ApiRepoResponseModel(repoList: [], totalCount: 0)));
      await build().getRepositoriesWithNumberOfPages(
        limit: limit,
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        remoName: name,
      );
      verify(
        _apiRestRepoDao.getRepos(
          page: page,
          limit: limit,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoName: name,
        ),
      );
    },
  );

  test(
    'when getRepositoriesWithNumberOfPages is called on ApiRepoRepository '
    'Pair object is returned with last object numberOfPages',
    () async {
      when(
        _apiRestRepoDao.getRepos(
          page: page,
          limit: 20,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoName: name,
        ),
      ).thenAnswer((_) => Future.value(const ApiRepoResponseModel(repoList: [], totalCount: 200)));
      // limit 20 totalCount 200
      final response = await build().getRepositoriesWithNumberOfPages(
        limit: 20,
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        remoName: name,
      );
      expect(response.last, 10);

      when(
        _apiRestRepoDao.getRepos(
          page: page,
          limit: 10,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoName: name,
        ),
      ).thenAnswer((_) => Future.value(const ApiRepoResponseModel(repoList: [], totalCount: 5000)));
      // limit 10 totalCount 5000
      final response2 = await build().getRepositoriesWithNumberOfPages(
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        remoName: name,
      );
      expect(response2.last, 500);

      when(
        _apiRestRepoDao.getRepos(
          page: page,
          limit: 5,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoName: name,
        ),
      ).thenAnswer((_) => Future.value(const ApiRepoResponseModel(repoList: [], totalCount: 1)));
      // limit 5 totalCount 1
      final response3 = await build().getRepositoriesWithNumberOfPages(
        limit: 5,
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        remoName: name,
      );
      expect(response3.last, 1);
    },
  );

  test(
    'when getRepositoriesWithNumberOfPages is called on ApiRepoRepository '
    'Pair object is returned with first object list of repoModels',
    () async {
      const apiModel = ApiRepoModel(
        name: 'repoName',
        fullName: 'fullName',
        ownerModel: ApiOwnerModel(id: 1, name: 'ownerName', avatarUrl: 'ownerAvatar'),
        id: 1,
      );

      const apiModel2 = ApiRepoModel(
        name: 'repoName2',
        fullName: 'fullName2',
        ownerModel: ApiOwnerModel(id: 2, name: 'ownerName2', avatarUrl: 'ownerAvatar2'),
        id: 2,
      );

      when(
        _apiRestRepoDao.getRepos(
          page: page,
          limit: limit,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoName: name,
        ),
      ).thenAnswer((_) => Future.value(const ApiRepoResponseModel(repoList: [], totalCount: 200)));
      // limit 20 totalCount 200
      final response = await build().getRepositoriesWithNumberOfPages(
        limit: 20,
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        remoName: name,
      );
      expect(response.first, []);

      when(
        _apiRestRepoDao.getRepos(
          page: page,
          limit: 10,
          sortDirection: sortDir.toQueryPar(),
          sortType: sortType.toQueryPar(),
          repoName: name,
        ),
      ).thenAnswer((_) => Future.value(const ApiRepoResponseModel(repoList: [apiModel, apiModel2], totalCount: 5000)));
      // limit 10 totalCount 5000
      final response2 = await build().getRepositoriesWithNumberOfPages(
        page: page,
        sortDirection: sortDir,
        sortType: sortType,
        remoName: name,
      );
      expect(response2.first, [apiModel.toDomain(), apiModel2.toDomain()]);
    },
  );
}
