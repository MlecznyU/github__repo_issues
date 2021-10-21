// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IssueStateTearOff {
  const _$IssueStateTearOff();

  _IssueState call(
      {required StateType stateType,
      required List<IssueModel> issuesList,
      int numberOfPages = 1,
      int currentPage = 1}) {
    return _IssueState(
      stateType: stateType,
      issuesList: issuesList,
      numberOfPages: numberOfPages,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $IssueState = _$IssueStateTearOff();

/// @nodoc
mixin _$IssueState {
  StateType get stateType => throw _privateConstructorUsedError;
  List<IssueModel> get issuesList => throw _privateConstructorUsedError;
  int get numberOfPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueStateCopyWith<IssueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueStateCopyWith<$Res> {
  factory $IssueStateCopyWith(
          IssueState value, $Res Function(IssueState) then) =
      _$IssueStateCopyWithImpl<$Res>;
  $Res call(
      {StateType stateType,
      List<IssueModel> issuesList,
      int numberOfPages,
      int currentPage});
}

/// @nodoc
class _$IssueStateCopyWithImpl<$Res> implements $IssueStateCopyWith<$Res> {
  _$IssueStateCopyWithImpl(this._value, this._then);

  final IssueState _value;
  // ignore: unused_field
  final $Res Function(IssueState) _then;

  @override
  $Res call({
    Object? stateType = freezed,
    Object? issuesList = freezed,
    Object? numberOfPages = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      stateType: stateType == freezed
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      issuesList: issuesList == freezed
          ? _value.issuesList
          : issuesList // ignore: cast_nullable_to_non_nullable
              as List<IssueModel>,
      numberOfPages: numberOfPages == freezed
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$IssueStateCopyWith<$Res> implements $IssueStateCopyWith<$Res> {
  factory _$IssueStateCopyWith(
          _IssueState value, $Res Function(_IssueState) then) =
      __$IssueStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateType stateType,
      List<IssueModel> issuesList,
      int numberOfPages,
      int currentPage});
}

/// @nodoc
class __$IssueStateCopyWithImpl<$Res> extends _$IssueStateCopyWithImpl<$Res>
    implements _$IssueStateCopyWith<$Res> {
  __$IssueStateCopyWithImpl(
      _IssueState _value, $Res Function(_IssueState) _then)
      : super(_value, (v) => _then(v as _IssueState));

  @override
  _IssueState get _value => super._value as _IssueState;

  @override
  $Res call({
    Object? stateType = freezed,
    Object? issuesList = freezed,
    Object? numberOfPages = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_IssueState(
      stateType: stateType == freezed
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      issuesList: issuesList == freezed
          ? _value.issuesList
          : issuesList // ignore: cast_nullable_to_non_nullable
              as List<IssueModel>,
      numberOfPages: numberOfPages == freezed
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_IssueState implements _IssueState {
  const _$_IssueState(
      {required this.stateType,
      required this.issuesList,
      this.numberOfPages = 1,
      this.currentPage = 1});

  @override
  final StateType stateType;
  @override
  final List<IssueModel> issuesList;
  @JsonKey(defaultValue: 1)
  @override
  final int numberOfPages;
  @JsonKey(defaultValue: 1)
  @override
  final int currentPage;

  @override
  String toString() {
    return 'IssueState(stateType: $stateType, issuesList: $issuesList, numberOfPages: $numberOfPages, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssueState &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType) &&
            const DeepCollectionEquality()
                .equals(other.issuesList, issuesList) &&
            (identical(other.numberOfPages, numberOfPages) ||
                other.numberOfPages == numberOfPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateType,
      const DeepCollectionEquality().hash(issuesList),
      numberOfPages,
      currentPage);

  @JsonKey(ignore: true)
  @override
  _$IssueStateCopyWith<_IssueState> get copyWith =>
      __$IssueStateCopyWithImpl<_IssueState>(this, _$identity);
}

abstract class _IssueState implements IssueState {
  const factory _IssueState(
      {required StateType stateType,
      required List<IssueModel> issuesList,
      int numberOfPages,
      int currentPage}) = _$_IssueState;

  @override
  StateType get stateType;
  @override
  List<IssueModel> get issuesList;
  @override
  int get numberOfPages;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$IssueStateCopyWith<_IssueState> get copyWith =>
      throw _privateConstructorUsedError;
}
