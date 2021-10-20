import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_challenge_flutter/domain/utils.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';

import '../../mocks.mocks.dart';

late MockRepoRepository _repoRepository;

void main() {
  const initialState = RepoState(stateType: StateType.initial, repoName: '', repoList: []);

  RepoBloc _build() => RepoBloc(_repoRepository);

  setUp(() {
    _repoRepository = MockRepoRepository();
  });

  test('init state = StateType.initial', () {
    final bloc = _build();

    expect(bloc.state.stateType, StateType.initial);
  });

  blocTest<RepoBloc, RepoState>(
    'bloc emits nothing on getRepositories called when repoName string is shorter then 4 chars',
    build: _build,
    expect: () => [],
    act: (bloc) async {
      await bloc.getRepositories(name: '');
      await bloc.getRepositories(name: '1');
      await bloc.getRepositories(name: '12');
      await bloc.getRepositories(name: '123');
    },
  );

  blocTest<RepoBloc, RepoState>(
    'bloc emits loading state and than error state '
    'on getRepositories called when repoName string is longer then 4 chars and error thrown',
    build: _build,
    expect: () => [
      initialState.copyWith(repoName: '1234', stateType: StateType.loading),
      initialState.copyWith(repoName: '1234', stateType: StateType.error),
    ],
    act: (bloc) async {
      when(_repoRepository.getRepositoriesWithNumberOfPages(remoName: '1234')).thenAnswer((_) => Future.error(Error()));
      await bloc.getRepositories(name: '1234');
    },
  );

  blocTest<RepoBloc, RepoState>(
    'bloc emits loading state and than loaded state with empty list '
    'on getRepositories called when repoName string is longer then 4 chars and returned list is empty',
    build: _build,
    expect: () => [
      initialState.copyWith(repoName: '1234', stateType: StateType.loading),
      initialState.copyWith(repoName: '1234', stateType: StateType.loaded),
    ],
    act: (bloc) async {
      when(_repoRepository.getRepositoriesWithNumberOfPages(remoName: '1234'))
          .thenAnswer((_) => Future.value(Pair([], 1)));
      await bloc.getRepositories(name: '1234');
    },
  );
}
