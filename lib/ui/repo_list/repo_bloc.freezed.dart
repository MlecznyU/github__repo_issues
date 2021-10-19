// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepoStateTearOff {
  const _$RepoStateTearOff();

  _RepoState call(
      {required String repoName,
      required String ownerName,
      required List<RepoModel> repoList,
      required StateType stateType,
      int currentPage = 1,
      int numberOfPages = 1}) {
    return _RepoState(
      repoName: repoName,
      ownerName: ownerName,
      repoList: repoList,
      stateType: stateType,
      currentPage: currentPage,
      numberOfPages: numberOfPages,
    );
  }
}

/// @nodoc
const $RepoState = _$RepoStateTearOff();

/// @nodoc
mixin _$RepoState {
  String get repoName => throw _privateConstructorUsedError;
  String get ownerName => throw _privateConstructorUsedError;
  List<RepoModel> get repoList => throw _privateConstructorUsedError;
  StateType get stateType => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get numberOfPages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoStateCopyWith<RepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoStateCopyWith<$Res> {
  factory $RepoStateCopyWith(RepoState value, $Res Function(RepoState) then) =
      _$RepoStateCopyWithImpl<$Res>;
  $Res call(
      {String repoName,
      String ownerName,
      List<RepoModel> repoList,
      StateType stateType,
      int currentPage,
      int numberOfPages});
}

/// @nodoc
class _$RepoStateCopyWithImpl<$Res> implements $RepoStateCopyWith<$Res> {
  _$RepoStateCopyWithImpl(this._value, this._then);

  final RepoState _value;
  // ignore: unused_field
  final $Res Function(RepoState) _then;

  @override
  $Res call({
    Object? repoName = freezed,
    Object? ownerName = freezed,
    Object? repoList = freezed,
    Object? stateType = freezed,
    Object? currentPage = freezed,
    Object? numberOfPages = freezed,
  }) {
    return _then(_value.copyWith(
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: ownerName == freezed
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      repoList: repoList == freezed
          ? _value.repoList
          : repoList // ignore: cast_nullable_to_non_nullable
              as List<RepoModel>,
      stateType: stateType == freezed
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfPages: numberOfPages == freezed
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RepoStateCopyWith<$Res> implements $RepoStateCopyWith<$Res> {
  factory _$RepoStateCopyWith(
          _RepoState value, $Res Function(_RepoState) then) =
      __$RepoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String repoName,
      String ownerName,
      List<RepoModel> repoList,
      StateType stateType,
      int currentPage,
      int numberOfPages});
}

/// @nodoc
class __$RepoStateCopyWithImpl<$Res> extends _$RepoStateCopyWithImpl<$Res>
    implements _$RepoStateCopyWith<$Res> {
  __$RepoStateCopyWithImpl(_RepoState _value, $Res Function(_RepoState) _then)
      : super(_value, (v) => _then(v as _RepoState));

  @override
  _RepoState get _value => super._value as _RepoState;

  @override
  $Res call({
    Object? repoName = freezed,
    Object? ownerName = freezed,
    Object? repoList = freezed,
    Object? stateType = freezed,
    Object? currentPage = freezed,
    Object? numberOfPages = freezed,
  }) {
    return _then(_RepoState(
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: ownerName == freezed
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      repoList: repoList == freezed
          ? _value.repoList
          : repoList // ignore: cast_nullable_to_non_nullable
              as List<RepoModel>,
      stateType: stateType == freezed
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfPages: numberOfPages == freezed
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RepoState implements _RepoState {
  const _$_RepoState(
      {required this.repoName,
      required this.ownerName,
      required this.repoList,
      required this.stateType,
      this.currentPage = 1,
      this.numberOfPages = 1});

  @override
  final String repoName;
  @override
  final String ownerName;
  @override
  final List<RepoModel> repoList;
  @override
  final StateType stateType;
  @JsonKey(defaultValue: 1)
  @override
  final int currentPage;
  @JsonKey(defaultValue: 1)
  @override
  final int numberOfPages;

  @override
  String toString() {
    return 'RepoState(repoName: $repoName, ownerName: $ownerName, repoList: $repoList, stateType: $stateType, currentPage: $currentPage, numberOfPages: $numberOfPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepoState &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            const DeepCollectionEquality().equals(other.repoList, repoList) &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.numberOfPages, numberOfPages) ||
                other.numberOfPages == numberOfPages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      repoName,
      ownerName,
      const DeepCollectionEquality().hash(repoList),
      stateType,
      currentPage,
      numberOfPages);

  @JsonKey(ignore: true)
  @override
  _$RepoStateCopyWith<_RepoState> get copyWith =>
      __$RepoStateCopyWithImpl<_RepoState>(this, _$identity);
}

abstract class _RepoState implements RepoState {
  const factory _RepoState(
      {required String repoName,
      required String ownerName,
      required List<RepoModel> repoList,
      required StateType stateType,
      int currentPage,
      int numberOfPages}) = _$_RepoState;

  @override
  String get repoName;
  @override
  String get ownerName;
  @override
  List<RepoModel> get repoList;
  @override
  StateType get stateType;
  @override
  int get currentPage;
  @override
  int get numberOfPages;
  @override
  @JsonKey(ignore: true)
  _$RepoStateCopyWith<_RepoState> get copyWith =>
      throw _privateConstructorUsedError;
}
