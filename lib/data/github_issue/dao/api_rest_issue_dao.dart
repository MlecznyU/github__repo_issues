import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:tech_challenge_flutter/data/github_issue/model/api_issue_response_model.dart';

part 'api_rest_issue_dao.g.dart';

@RestApi()
abstract class ApiRestIssueDao {
  factory ApiRestIssueDao(Dio dio, {String baseUrl}) = _ApiRestIssueDao;

  @GET("/search/issues")
  Future<ApiIssueResponseModel> getIssues({
    @Query('q') required String repoFullName,
    @Query('sort') required String sortType,
    @Query('order') required String sortDirection,
    @Query('per_page') required int limit,
    @Query('page') required int page,
  });
}
