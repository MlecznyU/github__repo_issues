import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_repository.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';

@Injectable(as: RepoRepository)
class ApiRepoRepository implements RepoRepository {
  final Dio _dio;
  final String _baseRepoUrl;
  Response? lastResponse;

  ApiRepoRepository(this._dio, this._baseRepoUrl);

  @override
  int getNumberOfPages() {
    final link = lastResponse?.headers.map['Link'];
    // TODO: implement getNumberOfPagesForGivenRepoName
    throw UnimplementedError();
  }

  @override
  Future<List<RepoModel>> getRepositories({
    required String ownerName,
    String remoName = '',
    SortType sortType = SortType.created,
    SortDirection sortDirection = SortDirection.asc,
    int limit = 10,
    int page = 1,
  }) async {
    final queryParameters = {
      'sort': sortType.toQueryPar(),
      'direction': sortDirection.toQueryPar(),
      'per_page': limit,
      'page': page,
    };

    lastResponse = await _dio.get('$_baseRepoUrl/users/$ownerName/repos', queryParameters: queryParameters);
    return [];
  }
}

extension on SortType {
  String toQueryPar() {
    switch (this) {
      case SortType.created:
        return 'created';
      case SortType.updated:
        return 'updated';
      case SortType.name:
        return 'full_name';
      case SortType.pushed:
        return 'pushed';
    }
  }
}

extension on SortDirection {
  String toQueryPar() {
    switch (this) {
      case SortDirection.asc:
        return 'asc';
      case SortDirection.desc:
        return 'desc';
    }
  }
}
