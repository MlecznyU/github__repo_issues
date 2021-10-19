// Mocks generated by Mockito 5.0.16 from annotations
// in tech_challenge_flutter/test/mocks.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:tech_challenge_flutter/domain/github_repo/repo_model.dart'
    as _i4;
import 'package:tech_challenge_flutter/domain/github_repo/repo_repository.dart'
    as _i2;
import 'package:tech_challenge_flutter/domain/utils.dart' as _i5;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [RepoRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockRepoRepository extends _i1.Mock implements _i2.RepoRepository {
  MockRepoRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.RepoModel>> getRepositories(
          {String? ownerName,
          String? remoName,
          _i5.SortType? sortType = _i5.SortType.created,
          _i5.SortDirection? sortDirection = _i5.SortDirection.asc,
          int? limit = 10,
          int? page = 1}) =>
      (super.noSuchMethod(
              Invocation.method(#getRepositories, [], {
                #ownerName: ownerName,
                #remoName: remoName,
                #sortType: sortType,
                #sortDirection: sortDirection,
                #limit: limit,
                #page: page
              }),
              returnValue: Future<List<_i4.RepoModel>>.value(<_i4.RepoModel>[]))
          as _i3.Future<List<_i4.RepoModel>>);
  @override
  int getNumberOfPages() =>
      (super.noSuchMethod(Invocation.method(#getNumberOfPages, []),
          returnValue: 0) as int);
  @override
  String toString() => super.toString();
}
