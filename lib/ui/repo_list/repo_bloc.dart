import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_repository.dart';

part 'repo_bloc.freezed.dart';

enum StateType { initial, loading, loaded, error }

@freezed
class RepoState with _$RepoState {
  const factory RepoState({
    required String repoName,
    required List<RepoModel> repoList,
    required StateType stateType,
    @Default(1) int currentPage,
    @Default(1) int numberOfPages,
  }) = _RepoState;
}

class RepoBloc extends Cubit<RepoState> {
  RepoBloc(this._repoRepository)
      : super(
          const RepoState(
            stateType: StateType.initial,
            repoName: '',
            repoList: [],
          ),
        );

  final RepoRepository _repoRepository;

  Future<void> getRepositories({required String name, int pageNumber = 1}) async {
    if (name.length < 4) return;
    emit(state.copyWith(stateType: StateType.loading, repoName: name));

    try {
      final repoListWithPagesNumber = await _repoRepository.getRepositoriesWithNumberOfPages(
        remoName: name,
        page: pageNumber,
      );

      emit(
        state.copyWith(
          stateType: StateType.loaded,
          repoList: repoListWithPagesNumber.first,
          numberOfPages: repoListWithPagesNumber.last,
        ),
      );
    } catch (e) {
      emit(state.copyWith(stateType: StateType.error));
    }
  }

  Future<void> goToPage(int page) async {
    emit(state.copyWith(currentPage: page));
    await getRepositories(name: state.repoName);
  }
}
