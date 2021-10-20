import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:tech_challenge_flutter/data/github_repo/model/api_response_model.dart';

part 'api_rest_repo_dao.g.dart';

@RestApi()
abstract class ApiRestRepoDao {
  factory ApiRestRepoDao(Dio dio, {String baseUrl}) = _ApiRestRepoDao;

  @GET("/search/repositories")
  Future<ApiResponseModel> getRepos({
    @Query('q') required String userName,
    @Query('sort') required String sortType,
    @Query('order') required String sortDirection,
    @Query('per_page') required int limit,
    @Query('page') required int page,
  });
}
