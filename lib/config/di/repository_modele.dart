import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_challenge_flutter/config/api_config.dart';
import 'package:tech_challenge_flutter/data/github_repo/repository/api_repo_repository.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_repository.dart';

@module
abstract class RepositoryModule {
  @lazySingleton
  RepoRepository getRepoRepository(Dio dio, ApiConfig apiConfig) => ApiRepoRepository(dio, apiConfig.repoBaseUrl);
}
