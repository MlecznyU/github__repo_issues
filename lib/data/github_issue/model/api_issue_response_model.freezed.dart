// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_issue_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiIssueResponseModel _$ApiIssueResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ApiIssueResponseModel.fromJson(json);
}

/// @nodoc
class _$ApiIssueResponseModelTearOff {
  const _$ApiIssueResponseModelTearOff();

  _ApiIssueResponseModel call(
      {@JsonKey(name: 'total_count') required int totalCount,
      @JsonKey(name: 'items') required List<ApiIssueModel> issueList}) {
    return _ApiIssueResponseModel(
      totalCount: totalCount,
      issueList: issueList,
    );
  }

  ApiIssueResponseModel fromJson(Map<String, Object?> json) {
    return ApiIssueResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ApiIssueResponseModel = _$ApiIssueResponseModelTearOff();

/// @nodoc
mixin _$ApiIssueResponseModel {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<ApiIssueModel> get issueList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiIssueResponseModelCopyWith<ApiIssueResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiIssueResponseModelCopyWith<$Res> {
  factory $ApiIssueResponseModelCopyWith(ApiIssueResponseModel value,
          $Res Function(ApiIssueResponseModel) then) =
      _$ApiIssueResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'items') List<ApiIssueModel> issueList});
}

/// @nodoc
class _$ApiIssueResponseModelCopyWithImpl<$Res>
    implements $ApiIssueResponseModelCopyWith<$Res> {
  _$ApiIssueResponseModelCopyWithImpl(this._value, this._then);

  final ApiIssueResponseModel _value;
  // ignore: unused_field
  final $Res Function(ApiIssueResponseModel) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? issueList = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      issueList: issueList == freezed
          ? _value.issueList
          : issueList // ignore: cast_nullable_to_non_nullable
              as List<ApiIssueModel>,
    ));
  }
}

/// @nodoc
abstract class _$ApiIssueResponseModelCopyWith<$Res>
    implements $ApiIssueResponseModelCopyWith<$Res> {
  factory _$ApiIssueResponseModelCopyWith(_ApiIssueResponseModel value,
          $Res Function(_ApiIssueResponseModel) then) =
      __$ApiIssueResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'items') List<ApiIssueModel> issueList});
}

/// @nodoc
class __$ApiIssueResponseModelCopyWithImpl<$Res>
    extends _$ApiIssueResponseModelCopyWithImpl<$Res>
    implements _$ApiIssueResponseModelCopyWith<$Res> {
  __$ApiIssueResponseModelCopyWithImpl(_ApiIssueResponseModel _value,
      $Res Function(_ApiIssueResponseModel) _then)
      : super(_value, (v) => _then(v as _ApiIssueResponseModel));

  @override
  _ApiIssueResponseModel get _value => super._value as _ApiIssueResponseModel;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? issueList = freezed,
  }) {
    return _then(_ApiIssueResponseModel(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      issueList: issueList == freezed
          ? _value.issueList
          : issueList // ignore: cast_nullable_to_non_nullable
              as List<ApiIssueModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiIssueResponseModel implements _ApiIssueResponseModel {
  const _$_ApiIssueResponseModel(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'items') required this.issueList});

  factory _$_ApiIssueResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiIssueResponseModelFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'items')
  final List<ApiIssueModel> issueList;

  @override
  String toString() {
    return 'ApiIssueResponseModel(totalCount: $totalCount, issueList: $issueList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiIssueResponseModel &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other.issueList, issueList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(issueList));

  @JsonKey(ignore: true)
  @override
  _$ApiIssueResponseModelCopyWith<_ApiIssueResponseModel> get copyWith =>
      __$ApiIssueResponseModelCopyWithImpl<_ApiIssueResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiIssueResponseModelToJson(this);
  }
}

abstract class _ApiIssueResponseModel implements ApiIssueResponseModel {
  const factory _ApiIssueResponseModel(
          {@JsonKey(name: 'total_count') required int totalCount,
          @JsonKey(name: 'items') required List<ApiIssueModel> issueList}) =
      _$_ApiIssueResponseModel;

  factory _ApiIssueResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ApiIssueResponseModel.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'items')
  List<ApiIssueModel> get issueList;
  @override
  @JsonKey(ignore: true)
  _$ApiIssueResponseModelCopyWith<_ApiIssueResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
