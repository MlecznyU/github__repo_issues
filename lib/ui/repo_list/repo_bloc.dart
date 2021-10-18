import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart';

part 'repo_bloc.freezed.dart';

@freezed
class RepoState with _$RepoState {
  const factory RepoState.initial({
    String? repoName,
  }) = _Initial;

  const factory RepoState.loading({
    required String repoName,
  }) = _Loading;

  const factory RepoState.loaded({
    required String repoName,
    required List<RepoModel> repoList,
    required int currentPage,
    required int numberOfPages,
  }) = _Loaded;

  const factory RepoState.error({
    String? repoName,
    required String errorMessage,
  }) = _Error;
}

class RepoBloc extends Cubit<RepoState> {
  RepoBloc() : super(const RepoState.initial());

  Future<void> getRepositories({required String name}) async {
    if (name.length < 4) return;
    emit(RepoState.loading(repoName: name));

    await Future.delayed(const Duration(seconds: 1), () {
      emit(const RepoState.error(errorMessage: 'errorMessage'));
    });
  }
}
