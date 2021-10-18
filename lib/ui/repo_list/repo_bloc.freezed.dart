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

  _Initial initial({String? repoName}) {
    return _Initial(
      repoName: repoName,
    );
  }

  _Loading loading({required String repoName}) {
    return _Loading(
      repoName: repoName,
    );
  }

  _Loaded loaded(
      {required String repoName,
      required List<RepoModel> repoList,
      required int currentPage,
      required int numberOfPages}) {
    return _Loaded(
      repoName: repoName,
      repoList: repoList,
      currentPage: currentPage,
      numberOfPages: numberOfPages,
    );
  }

  _Error error({String? repoName, required String errorMessage}) {
    return _Error(
      repoName: repoName,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $RepoState = _$RepoStateTearOff();

/// @nodoc
mixin _$RepoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? repoName) initial,
    required TResult Function(String repoName) loading,
    required TResult Function(String repoName, List<RepoModel> repoList,
            int currentPage, int numberOfPages)
        loaded,
    required TResult Function(String? repoName, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoStateCopyWith<$Res> {
  factory $RepoStateCopyWith(RepoState value, $Res Function(RepoState) then) =
      _$RepoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepoStateCopyWithImpl<$Res> implements $RepoStateCopyWith<$Res> {
  _$RepoStateCopyWithImpl(this._value, this._then);

  final RepoState _value;
  // ignore: unused_field
  final $Res Function(RepoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({String? repoName});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RepoStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? repoName = freezed,
  }) {
    return _then(_Initial(
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.repoName});

  @override
  final String? repoName;

  @override
  String toString() {
    return 'RepoState.initial(repoName: $repoName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repoName);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? repoName) initial,
    required TResult Function(String repoName) loading,
    required TResult Function(String repoName, List<RepoModel> repoList,
            int currentPage, int numberOfPages)
        loaded,
    required TResult Function(String? repoName, String errorMessage) error,
  }) {
    return initial(repoName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
  }) {
    return initial?.call(repoName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(repoName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RepoState {
  const factory _Initial({String? repoName}) = _$_Initial;

  String? get repoName;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({String repoName});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$RepoStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? repoName = freezed,
  }) {
    return _then(_Loading(
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.repoName});

  @override
  final String repoName;

  @override
  String toString() {
    return 'RepoState.loading(repoName: $repoName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repoName);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? repoName) initial,
    required TResult Function(String repoName) loading,
    required TResult Function(String repoName, List<RepoModel> repoList,
            int currentPage, int numberOfPages)
        loaded,
    required TResult Function(String? repoName, String errorMessage) error,
  }) {
    return loading(repoName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
  }) {
    return loading?.call(repoName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(repoName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RepoState {
  const factory _Loading({required String repoName}) = _$_Loading;

  String get repoName;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {String repoName,
      List<RepoModel> repoList,
      int currentPage,
      int numberOfPages});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$RepoStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? repoName = freezed,
    Object? repoList = freezed,
    Object? currentPage = freezed,
    Object? numberOfPages = freezed,
  }) {
    return _then(_Loaded(
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      repoList: repoList == freezed
          ? _value.repoList
          : repoList // ignore: cast_nullable_to_non_nullable
              as List<RepoModel>,
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

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.repoName,
      required this.repoList,
      required this.currentPage,
      required this.numberOfPages});

  @override
  final String repoName;
  @override
  final List<RepoModel> repoList;
  @override
  final int currentPage;
  @override
  final int numberOfPages;

  @override
  String toString() {
    return 'RepoState.loaded(repoName: $repoName, repoList: $repoList, currentPage: $currentPage, numberOfPages: $numberOfPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName) &&
            const DeepCollectionEquality().equals(other.repoList, repoList) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.numberOfPages, numberOfPages) ||
                other.numberOfPages == numberOfPages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      repoName,
      const DeepCollectionEquality().hash(repoList),
      currentPage,
      numberOfPages);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? repoName) initial,
    required TResult Function(String repoName) loading,
    required TResult Function(String repoName, List<RepoModel> repoList,
            int currentPage, int numberOfPages)
        loaded,
    required TResult Function(String? repoName, String errorMessage) error,
  }) {
    return loaded(repoName, repoList, currentPage, numberOfPages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
  }) {
    return loaded?.call(repoName, repoList, currentPage, numberOfPages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(repoName, repoList, currentPage, numberOfPages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RepoState {
  const factory _Loaded(
      {required String repoName,
      required List<RepoModel> repoList,
      required int currentPage,
      required int numberOfPages}) = _$_Loaded;

  String get repoName;
  List<RepoModel> get repoList;
  int get currentPage;
  int get numberOfPages;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? repoName, String errorMessage});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$RepoStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? repoName = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_Error(
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.repoName, required this.errorMessage});

  @override
  final String? repoName;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RepoState.error(repoName: $repoName, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repoName, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? repoName) initial,
    required TResult Function(String repoName) loading,
    required TResult Function(String repoName, List<RepoModel> repoList,
            int currentPage, int numberOfPages)
        loaded,
    required TResult Function(String? repoName, String errorMessage) error,
  }) {
    return error(repoName, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
  }) {
    return error?.call(repoName, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? repoName)? initial,
    TResult Function(String repoName)? loading,
    TResult Function(String repoName, List<RepoModel> repoList, int currentPage,
            int numberOfPages)?
        loaded,
    TResult Function(String? repoName, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(repoName, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RepoState {
  const factory _Error({String? repoName, required String errorMessage}) =
      _$_Error;

  String? get repoName;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
