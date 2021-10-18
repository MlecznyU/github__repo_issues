import 'package:flutter_test/flutter_test.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';

void main() {
  RepoBloc _build() => RepoBloc();

  test('init state = RepoState.initial', () {
    final bloc = _build();

    expect(bloc.state, const RepoState.initial());
  });
}
