// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseModel _$ApiResponseModelFromJson(Map<String, dynamic> json) {
  return _ApiResponseModel.fromJson(json);
}

/// @nodoc
class _$ApiResponseModelTearOff {
  const _$ApiResponseModelTearOff();

  _ApiResponseModel call(
      {@JsonKey(name: 'total_count') required int totalCount,
      @JsonKey(name: 'items') required List<ApiRepoModel> repoList}) {
    return _ApiResponseModel(
      totalCount: totalCount,
      repoList: repoList,
    );
  }

  ApiResponseModel fromJson(Map<String, Object?> json) {
    return ApiResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ApiResponseModel = _$ApiResponseModelTearOff();

/// @nodoc
mixin _$ApiResponseModel {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<ApiRepoModel> get repoList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseModelCopyWith<ApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseModelCopyWith<$Res> {
  factory $ApiResponseModelCopyWith(
          ApiResponseModel value, $Res Function(ApiResponseModel) then) =
      _$ApiResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'items') List<ApiRepoModel> repoList});
}

/// @nodoc
class _$ApiResponseModelCopyWithImpl<$Res>
    implements $ApiResponseModelCopyWith<$Res> {
  _$ApiResponseModelCopyWithImpl(this._value, this._then);

  final ApiResponseModel _value;
  // ignore: unused_field
  final $Res Function(ApiResponseModel) _then;

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
abstract class _$ApiResponseModelCopyWith<$Res>
    implements $ApiResponseModelCopyWith<$Res> {
  factory _$ApiResponseModelCopyWith(
          _ApiResponseModel value, $Res Function(_ApiResponseModel) then) =
      __$ApiResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'items') List<ApiRepoModel> repoList});
}

/// @nodoc
class __$ApiResponseModelCopyWithImpl<$Res>
    extends _$ApiResponseModelCopyWithImpl<$Res>
    implements _$ApiResponseModelCopyWith<$Res> {
  __$ApiResponseModelCopyWithImpl(
      _ApiResponseModel _value, $Res Function(_ApiResponseModel) _then)
      : super(_value, (v) => _then(v as _ApiResponseModel));

  @override
  _ApiResponseModel get _value => super._value as _ApiResponseModel;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? repoList = freezed,
  }) {
    return _then(_ApiResponseModel(
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
class _$_ApiResponseModel implements _ApiResponseModel {
  const _$_ApiResponseModel(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'items') required this.repoList});

  factory _$_ApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseModelFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'items')
  final List<ApiRepoModel> repoList;

  @override
  String toString() {
    return 'ApiResponseModel(totalCount: $totalCount, repoList: $repoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResponseModel &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other.repoList, repoList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(repoList));

  @JsonKey(ignore: true)
  @override
  _$ApiResponseModelCopyWith<_ApiResponseModel> get copyWith =>
      __$ApiResponseModelCopyWithImpl<_ApiResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseModelToJson(this);
  }
}

abstract class _ApiResponseModel implements ApiResponseModel {
  const factory _ApiResponseModel(
          {@JsonKey(name: 'total_count') required int totalCount,
          @JsonKey(name: 'items') required List<ApiRepoModel> repoList}) =
      _$_ApiResponseModel;

  factory _ApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseModel.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'items')
  List<ApiRepoModel> get repoList;
  @override
  @JsonKey(ignore: true)
  _$ApiResponseModelCopyWith<_ApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
