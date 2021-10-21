import 'package:injectable/injectable.dart';
import 'package:tech_challenge_flutter/ui/issues/issue_bloc.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';

@module
abstract class BlocModule {
  @injectable
  RepoBloc get repoBloc;

  @injectable
  IssueBloc get issueBloc;
}
