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
    required String ownerName,
    required List<RepoModel> repoList,
    required StateType stateType,
    @Default(1) int currentPage,
    @Default(1) int numberOfPages,
  }) = _RepoState;
}

class RepoBloc extends Cubit<RepoState> {
  RepoBloc(this.repoRepository)
      : super(
          const RepoState(
            stateType: StateType.initial,
            repoName: '',
            repoList: [],
            ownerName: '',
          ),
        );

  final RepoRepository repoRepository;

  Future<void> getRepositories({required String name, required String ownerName, int pageNumber = 1}) async {
    if (name.length < 4) return;
    emit(state.copyWith(stateType: StateType.loading, repoName: name));

    try {
      final repoList = await repoRepository.getRepositories(ownerName: ownerName, remoName: name, page: pageNumber);
      final numberOfPages = repoRepository.getNumberOfPages();

      emit(
        state.copyWith(stateType: StateType.loaded, repoList: repoList, numberOfPages: numberOfPages),
      );
    } catch (e) {
      emit(state.copyWith(stateType: StateType.error));
    }
  }

  Future<void> goToPage(int page) async {
    emit(state.copyWith(currentPage: page));
    await getRepositories(name: state.repoName, ownerName: state.ownerName);
  }
}
