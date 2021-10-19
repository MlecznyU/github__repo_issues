// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepoModelTearOff {
  const _$RepoModelTearOff();

  _RepoModel call(
      {required int repoId,
      required String repoName,
      required String ownerName,
      required String fullName,
      required String ownerAvatar}) {
    return _RepoModel(
      repoId: repoId,
      repoName: repoName,
      ownerName: ownerName,
      fullName: fullName,
      ownerAvatar: ownerAvatar,
    );
  }
}

/// @nodoc
const $RepoModel = _$RepoModelTearOff();

/// @nodoc
mixin _$RepoModel {
  int get repoId => throw _privateConstructorUsedError;
  String get repoName => throw _privateConstructorUsedError;
  String get ownerName => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get ownerAvatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoModelCopyWith<RepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoModelCopyWith<$Res> {
  factory $RepoModelCopyWith(RepoModel value, $Res Function(RepoModel) then) =
      _$RepoModelCopyWithImpl<$Res>;
  $Res call(
      {int repoId,
      String repoName,
      String ownerName,
      String fullName,
      String ownerAvatar});
}

/// @nodoc
class _$RepoModelCopyWithImpl<$Res> implements $RepoModelCopyWith<$Res> {
  _$RepoModelCopyWithImpl(this._value, this._then);

  final RepoModel _value;
  // ignore: unused_field
  final $Res Function(RepoModel) _then;

  @override
  $Res call({
    Object? repoId = freezed,
    Object? repoName = freezed,
    Object? ownerName = freezed,
    Object? fullName = freezed,
    Object? ownerAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      repoId: repoId == freezed
          ? _value.repoId
          : repoId // ignore: cast_nullable_to_non_nullable
              as int,
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: ownerName == freezed
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerAvatar: ownerAvatar == freezed
          ? _value.ownerAvatar
          : ownerAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RepoModelCopyWith<$Res> implements $RepoModelCopyWith<$Res> {
  factory _$RepoModelCopyWith(
          _RepoModel value, $Res Function(_RepoModel) then) =
      __$RepoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int repoId,
      String repoName,
      String ownerName,
      String fullName,
      String ownerAvatar});
}

/// @nodoc
class __$RepoModelCopyWithImpl<$Res> extends _$RepoModelCopyWithImpl<$Res>
    implements _$RepoModelCopyWith<$Res> {
  __$RepoModelCopyWithImpl(_RepoModel _value, $Res Function(_RepoModel) _then)
      : super(_value, (v) => _then(v as _RepoModel));

  @override
  _RepoModel get _value => super._value as _RepoModel;

  @override
  $Res call({
    Object? repoId = freezed,
    Object? repoName = freezed,
    Object? ownerName = freezed,
    Object? fullName = freezed,
    Object? ownerAvatar = freezed,
  }) {
    return _then(_RepoModel(
      repoId: repoId == freezed
          ? _value.repoId
          : repoId // ignore: cast_nullable_to_non_nullable
              as int,
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: ownerName == freezed
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerAvatar: ownerAvatar == freezed
          ? _value.ownerAvatar
          : ownerAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RepoModel implements _RepoModel {
  const _$_RepoModel(
      {required this.repoId,
      required this.repoName,
      required this.ownerName,
      required this.fullName,
      required this.ownerAvatar});

  @override
  final int repoId;
  @override
  final String repoName;
  @override
  final String ownerName;
  @override
  final String fullName;
  @override
  final String ownerAvatar;

  @override
  String toString() {
    return 'RepoModel(repoId: $repoId, repoName: $repoName, ownerName: $ownerName, fullName: $fullName, ownerAvatar: $ownerAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepoModel &&
            (identical(other.repoId, repoId) || other.repoId == repoId) &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.ownerAvatar, ownerAvatar) ||
                other.ownerAvatar == ownerAvatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, repoId, repoName, ownerName, fullName, ownerAvatar);

  @JsonKey(ignore: true)
  @override
  _$RepoModelCopyWith<_RepoModel> get copyWith =>
      __$RepoModelCopyWithImpl<_RepoModel>(this, _$identity);
}

abstract class _RepoModel implements RepoModel {
  const factory _RepoModel(
      {required int repoId,
      required String repoName,
      required String ownerName,
      required String fullName,
      required String ownerAvatar}) = _$_RepoModel;

  @override
  int get repoId;
  @override
  String get repoName;
  @override
  String get ownerName;
  @override
  String get fullName;
  @override
  String get ownerAvatar;
  @override
  @JsonKey(ignore: true)
  _$RepoModelCopyWith<_RepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
