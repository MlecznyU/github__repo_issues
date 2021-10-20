import 'package:injectable/injectable.dart';
import 'package:tech_challenge_flutter/domain/github_repo/repo_repository.dart';

@module
abstract class RepositoryModule {
  @lazySingleton
  RepoRepository get repoRepository;
}
