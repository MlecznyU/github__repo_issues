// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/github_issue/dao/api_rest_issue_dao.dart' as _i5;
import '../../data/github_issue/repository/api_issue_repository.dart' as _i16;
import '../../data/github_repo/dao/api_rest_repo_dao.dart' as _i7;
import '../../data/github_repo/repository/api_repo_repository.dart' as _i17;
import '../../data/services_impl/default_orientation_service.dart' as _i14;
import '../../domain/github_issue/issue_repository.dart' as _i8;
import '../../domain/github_repo/repo_repository.dart' as _i9;
import '../../domain/orientation_service.dart' as _i4;
import '../../ui/issues/issue_bloc.dart' as _i10;
import '../../ui/repo_list/repo_bloc.dart' as _i11;
import '../api_config.dart' as _i6;
import 'bloc_module.dart' as _i18;
import 'netwoking_module.dart' as _i12;
import 'repository_modele.dart' as _i15;
import 'service_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkingModule = _$NetworkingModule();
  final serviceModule = _$ServiceModule();
  final repositoryModule = _$RepositoryModule(get);
  final blocModule = _$BlocModule(get);
  gh.lazySingleton<_i3.Dio>(() => networkingModule.dio);
  gh.lazySingleton<_i4.OrientationService>(
      () => serviceModule.defaultOrientationService);
  gh.lazySingleton<_i5.ApiRestIssueDao>(() => networkingModule
      .getApiRestIssueDao(get<_i3.Dio>(), get<_i6.ApiConfig>()));
  gh.lazySingleton<_i7.ApiRestRepoDao>(() =>
      networkingModule.getApiRestRepoDao(get<_i3.Dio>(), get<_i6.ApiConfig>()));
  gh.lazySingleton<_i8.IssueRepository>(() => repositoryModule.issueRepository);
  gh.lazySingleton<_i9.RepoRepository>(() => repositoryModule.repoRepository);
  gh.factory<_i10.IssueBloc>(() => blocModule.issueBloc);
  gh.factory<_i11.RepoBloc>(() => blocModule.repoBloc);
  return get;
}

class _$NetworkingModule extends _i12.NetworkingModule {}

class _$ServiceModule extends _i13.ServiceModule {
  @override
  _i14.DefaultOrientationService get defaultOrientationService =>
      _i14.DefaultOrientationService();
}

class _$RepositoryModule extends _i15.RepositoryModule {
  _$RepositoryModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i16.ApiIssueRepository get issueRepository =>
      _i16.ApiIssueRepository(_getIt<_i5.ApiRestIssueDao>());
  @override
  _i17.ApiRepoRepository get repoRepository =>
      _i17.ApiRepoRepository(_getIt<_i7.ApiRestRepoDao>());
}

class _$BlocModule extends _i18.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i10.IssueBloc get issueBloc => _i10.IssueBloc(_getIt<_i8.IssueRepository>());
  @override
  _i11.RepoBloc get repoBloc => _i11.RepoBloc(_getIt<_i9.RepoRepository>());
}
