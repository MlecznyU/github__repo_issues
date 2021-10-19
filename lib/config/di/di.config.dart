// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/github_repo/repo_repository.dart' as _i4;
import '../../ui/repo_list/repo_bloc.dart' as _i6;
import '../api_config.dart' as _i5;
import 'netwoking_module.dart' as _i7;
import 'repository_modele.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkingModule = _$NetworkingModule();
  final repositoryModule = _$RepositoryModule();
  gh.lazySingleton<_i3.Dio>(() => networkingModule.dio);
  gh.lazySingleton<_i4.RepoRepository>(() =>
      repositoryModule.getRepoRepository(get<_i3.Dio>(), get<_i5.ApiConfig>()));
  gh.factory<_i6.RepoBloc>(() => _i6.RepoBloc(get<_i4.RepoRepository>()));
  return get;
}

class _$NetworkingModule extends _i7.NetworkingModule {}

class _$RepositoryModule extends _i8.RepositoryModule {}
