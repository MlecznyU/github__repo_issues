// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_issue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiIssueModel _$ApiIssueModelFromJson(Map<String, dynamic> json) {
  return _ApiIssueModel.fromJson(json);
}

/// @nodoc
class _$ApiIssueModelTearOff {
  const _$ApiIssueModelTearOff();

  _ApiIssueModel call(
      {@JsonKey(name: 'number') required int number,
      @JsonKey(name: 'title') required String issueTitle,
      @JsonKey(name: 'user') required ApiUserModel author,
      @JsonKey(name: 'state') required String openClosed,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'closed_at') required DateTime? closedAt}) {
    return _ApiIssueModel(
      number: number,
      issueTitle: issueTitle,
      author: author,
      openClosed: openClosed,
      createdAt: createdAt,
      closedAt: closedAt,
    );
  }

  ApiIssueModel fromJson(Map<String, Object?> json) {
    return ApiIssueModel.fromJson(json);
  }
}

/// @nodoc
const $ApiIssueModel = _$ApiIssueModelTearOff();

/// @nodoc
mixin _$ApiIssueModel {
  @JsonKey(name: 'number')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get issueTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  ApiUserModel get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String get openClosed => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'closed_at')
  DateTime? get closedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiIssueModelCopyWith<ApiIssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiIssueModelCopyWith<$Res> {
  factory $ApiIssueModelCopyWith(
          ApiIssueModel value, $Res Function(ApiIssueModel) then) =
      _$ApiIssueModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'number') int number,
      @JsonKey(name: 'title') String issueTitle,
      @JsonKey(name: 'user') ApiUserModel author,
      @JsonKey(name: 'state') String openClosed,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'closed_at') DateTime? closedAt});

  $ApiUserModelCopyWith<$Res> get author;
}

/// @nodoc
class _$ApiIssueModelCopyWithImpl<$Res>
    implements $ApiIssueModelCopyWith<$Res> {
  _$ApiIssueModelCopyWithImpl(this._value, this._then);

  final ApiIssueModel _value;
  // ignore: unused_field
  final $Res Function(ApiIssueModel) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? issueTitle = freezed,
    Object? author = freezed,
    Object? openClosed = freezed,
    Object? createdAt = freezed,
    Object? closedAt = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      issueTitle: issueTitle == freezed
          ? _value.issueTitle
          : issueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
      openClosed: openClosed == freezed
          ? _value.openClosed
          : openClosed // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      closedAt: closedAt == freezed
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $ApiUserModelCopyWith<$Res> get author {
    return $ApiUserModelCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$ApiIssueModelCopyWith<$Res>
    implements $ApiIssueModelCopyWith<$Res> {
  factory _$ApiIssueModelCopyWith(
          _ApiIssueModel value, $Res Function(_ApiIssueModel) then) =
      __$ApiIssueModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'number') int number,
      @JsonKey(name: 'title') String issueTitle,
      @JsonKey(name: 'user') ApiUserModel author,
      @JsonKey(name: 'state') String openClosed,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'closed_at') DateTime? closedAt});

  @override
  $ApiUserModelCopyWith<$Res> get author;
}

/// @nodoc
class __$ApiIssueModelCopyWithImpl<$Res>
    extends _$ApiIssueModelCopyWithImpl<$Res>
    implements _$ApiIssueModelCopyWith<$Res> {
  __$ApiIssueModelCopyWithImpl(
      _ApiIssueModel _value, $Res Function(_ApiIssueModel) _then)
      : super(_value, (v) => _then(v as _ApiIssueModel));

  @override
  _ApiIssueModel get _value => super._value as _ApiIssueModel;

  @override
  $Res call({
    Object? number = freezed,
    Object? issueTitle = freezed,
    Object? author = freezed,
    Object? openClosed = freezed,
    Object? createdAt = freezed,
    Object? closedAt = freezed,
  }) {
    return _then(_ApiIssueModel(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      issueTitle: issueTitle == freezed
          ? _value.issueTitle
          : issueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
      openClosed: openClosed == freezed
          ? _value.openClosed
          : openClosed // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      closedAt: closedAt == freezed
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiIssueModel implements _ApiIssueModel {
  const _$_ApiIssueModel(
      {@JsonKey(name: 'number') required this.number,
      @JsonKey(name: 'title') required this.issueTitle,
      @JsonKey(name: 'user') required this.author,
      @JsonKey(name: 'state') required this.openClosed,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'closed_at') required this.closedAt});

  factory _$_ApiIssueModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiIssueModelFromJson(json);

  @override
  @JsonKey(name: 'number')
  final int number;
  @override
  @JsonKey(name: 'title')
  final String issueTitle;
  @override
  @JsonKey(name: 'user')
  final ApiUserModel author;
  @override
  @JsonKey(name: 'state')
  final String openClosed;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'closed_at')
  final DateTime? closedAt;

  @override
  String toString() {
    return 'ApiIssueModel(number: $number, issueTitle: $issueTitle, author: $author, openClosed: $openClosed, createdAt: $createdAt, closedAt: $closedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiIssueModel &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.issueTitle, issueTitle) ||
                other.issueTitle == issueTitle) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.openClosed, openClosed) ||
                other.openClosed == openClosed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, number, issueTitle, author, openClosed, createdAt, closedAt);

  @JsonKey(ignore: true)
  @override
  _$ApiIssueModelCopyWith<_ApiIssueModel> get copyWith =>
      __$ApiIssueModelCopyWithImpl<_ApiIssueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiIssueModelToJson(this);
  }
}

abstract class _ApiIssueModel implements ApiIssueModel {
  const factory _ApiIssueModel(
          {@JsonKey(name: 'number') required int number,
          @JsonKey(name: 'title') required String issueTitle,
          @JsonKey(name: 'user') required ApiUserModel author,
          @JsonKey(name: 'state') required String openClosed,
          @JsonKey(name: 'created_at') required DateTime createdAt,
          @JsonKey(name: 'closed_at') required DateTime? closedAt}) =
      _$_ApiIssueModel;

  factory _ApiIssueModel.fromJson(Map<String, dynamic> json) =
      _$_ApiIssueModel.fromJson;

  @override
  @JsonKey(name: 'number')
  int get number;
  @override
  @JsonKey(name: 'title')
  String get issueTitle;
  @override
  @JsonKey(name: 'user')
  ApiUserModel get author;
  @override
  @JsonKey(name: 'state')
  String get openClosed;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'closed_at')
  DateTime? get closedAt;
  @override
  @JsonKey(ignore: true)
  _$ApiIssueModelCopyWith<_ApiIssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
