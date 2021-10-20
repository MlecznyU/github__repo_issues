// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/github_repo/dao/api_rest_repo_dao.dart' as _i5;
import '../../domain/github_repo/repo_repository.dart' as _i9;
import '../../ui/repo_list/repo_bloc.dart' as _i4;
import '../api_config.dart' as _i6;
import 'bloc_module.dart' as _i8;
import 'netwoking_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkingModule = _$NetworkingModule();
  final blocModule = _$BlocModule(get);
  gh.lazySingleton<_i3.Dio>(() => networkingModule.dio);
  gh.lazySingleton<_i4.RepoBloc>(() => blocModule.repoBloc);
  gh.lazySingleton<_i5.ApiRestRepoDao>(() =>
      networkingModule.getApiRestRepoDao(get<_i3.Dio>(), get<_i6.ApiConfig>()));
  return get;
}

class _$NetworkingModule extends _i7.NetworkingModule {}

class _$BlocModule extends _i8.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i4.RepoBloc get repoBloc => _i4.RepoBloc(_getIt<_i9.RepoRepository>());
}
