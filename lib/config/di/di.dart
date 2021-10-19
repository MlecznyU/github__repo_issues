import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_challenge_flutter/config/api_config.dart';

import 'di.config.dart';

final GetIt _getIt = GetIt.instance;

@InjectableInit()
void configureDI(ApiConfig apiConfig) {
  _getIt.registerSingleton<ApiConfig>(apiConfig);
  $initGetIt(_getIt);
}

T inject<T extends Object>() => _getIt.get<T>();
