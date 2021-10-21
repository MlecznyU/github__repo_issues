import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_challenge_flutter/domain/github_issue/issue_model.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';
import 'package:tech_challenge_flutter/ui/issues/issue_bloc.dart';
import 'package:tech_challenge_flutter/ui/utils/bloc_common.dart';

import '../../mocks.mocks.dart';

late MockIssueRepository _issueRepository;

void main() {
  const repoFullName = 'repoFullName';
  const initialState = IssueState(issuesList: [], stateType: StateType.initial);

  IssueBloc _build() => IssueBloc(_issueRepository);

  setUp(() {
    _issueRepository = MockIssueRepository();
  });

  test('init state = StateType.initial', () {
    final bloc = _build();

    expect(bloc.state.stateType, StateType.initial);
  });

  blocTest<IssueBloc, IssueState>(
    'when init method called on bloc '
    'getIssuesWithNumberOfPages method called on _issue repository with given repo full name',
    act: (bloc) => bloc.init(repoFullName),
    verify: (_) {
      when(
        _issueRepository.getIssuesWithNumberOfPages(
          repositoryFullName: repoFullName,
          sortDirection: SortDirection.desc,
          limit: 50,
        ),
      ).thenAnswer((realInvocation) => Future.value(Pair([], 1)));
      _issueRepository.getIssuesWithNumberOfPages(
        repositoryFullName: repoFullName,
        sortDirection: SortDirection.desc,
        limit: 50,
      );
    },
    build: _build,
  );

  blocTest<IssueBloc, IssueState>(
    'when issue repository returns error '
    'state with state type error is emitted',
    act: (bloc) {
      when(
        _issueRepository.getIssuesWithNumberOfPages(
          repositoryFullName: repoFullName,
          sortDirection: SortDirection.desc,
          limit: 50,
        ),
      ).thenAnswer((realInvocation) => Future.error(Error));
      bloc.init(repoFullName);
    },
    build: _build,
    skip: 1,
    expect: () => [initialState.copyWith(stateType: StateType.error)],
  );

  blocTest<IssueBloc, IssueState>(
    'when getIssuesForPage method called on bloc without init method than '
    'error is thrown',
    act: (bloc) => bloc.getIssuesForPage(pageNumber: 1),
    build: _build,
    skip: 1,
    expect: () => [initialState.copyWith(stateType: StateType.error)],
  );

  final IssueModel issueModel = IssueModel(
    issueNumber: 1,
    issueTitle: 'issueTitle',
    author: 'author',
    open: true,
    createdAt: DateTime(1998),
    closedAt: DateTime(1999),
  );
  final IssueModel issueModel2 = IssueModel(
    issueNumber: 2,
    issueTitle: 'issueTitle2',
    author: 'author2',
    open: true,
    createdAt: DateTime(1998),
    closedAt: DateTime(1999),
  );

  blocTest<IssueBloc, IssueState>(
    'when issue repository returns error '
    'state with state type error is emitted',
    act: (bloc) async {
      when(
        _issueRepository.getIssuesWithNumberOfPages(
          repositoryFullName: repoFullName,
          sortDirection: SortDirection.desc,
          limit: 50,
        ),
      ).thenAnswer((realInvocation) => Future.value(Pair([issueModel, issueModel2], 10)));
      await bloc.init(repoFullName);
    },
    build: _build,
    expect: () => [
      initialState.copyWith(stateType: StateType.loading),
      initialState.copyWith(stateType: StateType.loaded, issuesList: [issueModel, issueModel2], numberOfPages: 10)
    ],
  );
}
