import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tech_challenge_flutter/config/api_config.dart';
import 'package:tech_challenge_flutter/data/github_repo/dao/api_rest_repo_dao.dart';

@module
abstract class NetworkingModule {
  @lazySingleton
  Dio get dio => Dio()
    ..interceptors.addAll([
      if (!kReleaseMode) PrettyDioLogger(requestBody: true),
    ]);

  @lazySingleton
  ApiRestRepoDao getApiRestRepoDao(Dio dio, ApiConfig appConfig) => ApiRestRepoDao(dio, baseUrl: appConfig.repoBaseUrl);
}
