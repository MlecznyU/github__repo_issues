// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_repo_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiRepoResponseModel _$ApiRepoResponseModelFromJson(Map<String, dynamic> json) {
  return _ApiRepoResponseModell.fromJson(json);
}

/// @nodoc
class _$ApiRepoResponseModelTearOff {
  const _$ApiRepoResponseModelTearOff();

  _ApiRepoResponseModell call(
      {@JsonKey(name: 'total_count') required int totalCount,
      @JsonKey(name: 'items') required List<ApiRepoModel> repoList}) {
    return _ApiRepoResponseModell(
      totalCount: totalCount,
      repoList: repoList,
    );
  }

  ApiRepoResponseModel fromJson(Map<String, Object?> json) {
    return ApiRepoResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ApiRepoResponseModel = _$ApiRepoResponseModelTearOff();

/// @nodoc
mixin _$ApiRepoResponseModel {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<ApiRepoModel> get repoList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiRepoResponseModelCopyWith<ApiRepoResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRepoResponseModelCopyWith<$Res> {
  factory $ApiRepoResponseModelCopyWith(ApiRepoResponseModel value,
          $Res Function(ApiRepoResponseModel) then) =
      _$ApiRepoResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'items') List<ApiRepoModel> repoList});
}

/// @nodoc
class _$ApiRepoResponseModelCopyWithImpl<$Res>
    implements $ApiRepoResponseModelCopyWith<$Res> {
  _$ApiRepoResponseModelCopyWithImpl(this._value, this._then);

  final ApiRepoResponseModel _value;
  // ignore: unused_field
  final $Res Function(ApiRepoResponseModel) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? repoList = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      repoList: repoList == freezed
          ? _value.repoList
          : repoList // ignore: cast_nullable_to_non_nullable
              as List<ApiRepoModel>,
    ));
  }
}

/// @nodoc
abstract class _$ApiRepoResponseModellCopyWith<$Res>
    implements $ApiRepoResponseModelCopyWith<$Res> {
  factory _$ApiRepoResponseModellCopyWith(_ApiRepoResponseModell value,
          $Res Function(_ApiRepoResponseModell) then) =
      __$ApiRepoResponseModellCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'items') List<ApiRepoModel> repoList});
}

/// @nodoc
class __$ApiRepoResponseModellCopyWithImpl<$Res>
    extends _$ApiRepoResponseModelCopyWithImpl<$Res>
    implements _$ApiRepoResponseModellCopyWith<$Res> {
  __$ApiRepoResponseModellCopyWithImpl(_ApiRepoResponseModell _value,
      $Res Function(_ApiRepoResponseModell) _then)
      : super(_value, (v) => _then(v as _ApiRepoResponseModell));

  @override
  _ApiRepoResponseModell get _value => super._value as _ApiRepoResponseModell;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? repoList = freezed,
  }) {
    return _then(_ApiRepoResponseModell(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      repoList: repoList == freezed
          ? _value.repoList
          : repoList // ignore: cast_nullable_to_non_nullable
              as List<ApiRepoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiRepoResponseModell implements _ApiRepoResponseModell {
  const _$_ApiRepoResponseModell(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'items') required this.repoList});

  factory _$_ApiRepoResponseModell.fromJson(Map<String, dynamic> json) =>
      _$$_ApiRepoResponseModellFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'items')
  final List<ApiRepoModel> repoList;

  @override
  String toString() {
    return 'ApiRepoResponseModel(totalCount: $totalCount, repoList: $repoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiRepoResponseModell &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other.repoList, repoList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(repoList));

  @JsonKey(ignore: true)
  @override
  _$ApiRepoResponseModellCopyWith<_ApiRepoResponseModell> get copyWith =>
      __$ApiRepoResponseModellCopyWithImpl<_ApiRepoResponseModell>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiRepoResponseModellToJson(this);
  }
}

abstract class _ApiRepoResponseModell implements ApiRepoResponseModel {
  const factory _ApiRepoResponseModell(
          {@JsonKey(name: 'total_count') required int totalCount,
          @JsonKey(name: 'items') required List<ApiRepoModel> repoList}) =
      _$_ApiRepoResponseModell;

  factory _ApiRepoResponseModell.fromJson(Map<String, dynamic> json) =
      _$_ApiRepoResponseModell.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'items')
  List<ApiRepoModel> get repoList;
  @override
  @JsonKey(ignore: true)
  _$ApiRepoResponseModellCopyWith<_ApiRepoResponseModell> get copyWith =>
      throw _privateConstructorUsedError;
}
