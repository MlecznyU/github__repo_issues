import 'package:injectable/injectable.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';

@module
abstract class BlocModule {
  @lazySingleton
  RepoBloc get repoBloc;
}
