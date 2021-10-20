// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/github_repo/dao/api_rest_repo_dao.dart' as _i4;
import '../../data/github_repo/repository/api_repo_repository.dart' as _i10;
import '../../domain/github_repo/repo_repository.dart' as _i6;
import '../../ui/repo_list/repo_bloc.dart' as _i7;
import '../api_config.dart' as _i5;
import 'bloc_module.dart' as _i11;
import 'netwoking_module.dart' as _i8;
import 'repository_modele.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkingModule = _$NetworkingModule();
  final repositoryModule = _$RepositoryModule(get);
  final blocModule = _$BlocModule(get);
  gh.lazySingleton<_i3.Dio>(() => networkingModule.dio);
  gh.lazySingleton<_i4.ApiRestRepoDao>(() =>
      networkingModule.getApiRestRepoDao(get<_i3.Dio>(), get<_i5.ApiConfig>()));
  gh.lazySingleton<_i6.RepoRepository>(() => repositoryModule.repoRepository);
  gh.lazySingleton<_i7.RepoBloc>(() => blocModule.repoBloc);
  return get;
}

class _$NetworkingModule extends _i8.NetworkingModule {}

class _$RepositoryModule extends _i9.RepositoryModule {
  _$RepositoryModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i10.ApiRepoRepository get repoRepository =>
      _i10.ApiRepoRepository(_getIt<_i4.ApiRestRepoDao>());
}

class _$BlocModule extends _i11.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i7.RepoBloc get repoBloc => _i7.RepoBloc(_getIt<_i6.RepoRepository>());
}
