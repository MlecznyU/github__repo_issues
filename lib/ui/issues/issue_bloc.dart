import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_model.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_repository.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';
import 'package:tech_challenge_flutter/ui/utils/bloc_common.dart';

part 'issue_bloc.freezed.dart';

@freezed
class IssueState with _$IssueState {
  const factory IssueState({
    required StateType stateType,
    required List<IssueModel> issuesList,
    @Default(1) int numberOfPages,
    @Default(1) int currentPage,
  }) = _IssueState;
}

class IssueBloc extends Cubit<IssueState> {
  IssueBloc(this._issueRepository) : super(const IssueState(issuesList: [], stateType: StateType.initial));

  final IssueRepository _issueRepository;
  late final String _repoFullName;

  Future<void> init(String repoFullName) async {
    _repoFullName = repoFullName;
    await getIssuesForPage(pageNumber: 1);
  }

  Future<void> getIssuesForPage({required int pageNumber}) async {
    emit(state.copyWith(stateType: StateType.loading, currentPage: pageNumber));

    // change pagination widget to common component write tests for bloc, and add missing bloc tests
    try {
      final issueListWithPagesNumber = await _issueRepository.getIssuesWithNumberOfPages(
        repositoryFullName: _repoFullName,
        page: pageNumber,
        sortDirection: SortDirection.desc,
        limit: 50,
      );

      emit(
        state.copyWith(
          stateType: StateType.loaded,
          issuesList: issueListWithPagesNumber.first,
          numberOfPages: issueListWithPagesNumber.last,
        ),
      );
    } catch (e) {
      emit(state.copyWith(stateType: StateType.error));
    }
  }

  Future<void> refreshList() async {
    emit(state.copyWith(issuesList: []));
    await getIssuesForPage(pageNumber: 1);
  }
}
