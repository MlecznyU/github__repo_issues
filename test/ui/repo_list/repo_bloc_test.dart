import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';

void main() {
  RepoBloc _build() => RepoBloc();

  test('init state = RepoState.initial', () {
    final bloc = _build();

    expect(bloc.state, const RepoState.initial());
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
      const RepoState.loading(repoName: '1234'),
      const RepoState.error(errorMessage: 'errorMessage'),
    ],
    act: (bloc) async {
      await bloc.getRepositories(name: '1234');
    },
  );
}
