// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/github_repo/repository/api_repo_repository.dart' as _i4;
import '../domain/github_repo/repo_repository.dart' as _i3;
import '../ui/repo_list/repo_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.RepoRepository>(
      () => _i4.ApiRepoRepository(get<_i5.Dio>(), get<String>()));
  gh.factory<_i6.RepoBloc>(() => _i6.RepoBloc(get<_i3.RepoRepository>()));
  return get;
}
