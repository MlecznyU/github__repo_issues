// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IssueModelTearOff {
  const _$IssueModelTearOff();

  _IssueModel call(
      {required int issueNumber,
      required String issueTitle,
      required String author,
      required bool open,
      required DateTime createdAt,
      required DateTime? closedAt}) {
    return _IssueModel(
      issueNumber: issueNumber,
      issueTitle: issueTitle,
      author: author,
      open: open,
      createdAt: createdAt,
      closedAt: closedAt,
    );
  }
}

/// @nodoc
const $IssueModel = _$IssueModelTearOff();

/// @nodoc
mixin _$IssueModel {
  int get issueNumber => throw _privateConstructorUsedError;
  String get issueTitle => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get closedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueModelCopyWith<IssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueModelCopyWith<$Res> {
  factory $IssueModelCopyWith(
          IssueModel value, $Res Function(IssueModel) then) =
      _$IssueModelCopyWithImpl<$Res>;
  $Res call(
      {int issueNumber,
      String issueTitle,
      String author,
      bool open,
      DateTime createdAt,
      DateTime? closedAt});
}

/// @nodoc
class _$IssueModelCopyWithImpl<$Res> implements $IssueModelCopyWith<$Res> {
  _$IssueModelCopyWithImpl(this._value, this._then);

  final IssueModel _value;
  // ignore: unused_field
  final $Res Function(IssueModel) _then;

  @override
  $Res call({
    Object? issueNumber = freezed,
    Object? issueTitle = freezed,
    Object? author = freezed,
    Object? open = freezed,
    Object? createdAt = freezed,
    Object? closedAt = freezed,
  }) {
    return _then(_value.copyWith(
      issueNumber: issueNumber == freezed
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as int,
      issueTitle: issueTitle == freezed
          ? _value.issueTitle
          : issueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$IssueModelCopyWith<$Res> implements $IssueModelCopyWith<$Res> {
  factory _$IssueModelCopyWith(
          _IssueModel value, $Res Function(_IssueModel) then) =
      __$IssueModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int issueNumber,
      String issueTitle,
      String author,
      bool open,
      DateTime createdAt,
      DateTime? closedAt});
}

/// @nodoc
class __$IssueModelCopyWithImpl<$Res> extends _$IssueModelCopyWithImpl<$Res>
    implements _$IssueModelCopyWith<$Res> {
  __$IssueModelCopyWithImpl(
      _IssueModel _value, $Res Function(_IssueModel) _then)
      : super(_value, (v) => _then(v as _IssueModel));

  @override
  _IssueModel get _value => super._value as _IssueModel;

  @override
  $Res call({
    Object? issueNumber = freezed,
    Object? issueTitle = freezed,
    Object? author = freezed,
    Object? open = freezed,
    Object? createdAt = freezed,
    Object? closedAt = freezed,
  }) {
    return _then(_IssueModel(
      issueNumber: issueNumber == freezed
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as int,
      issueTitle: issueTitle == freezed
          ? _value.issueTitle
          : issueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_IssueModel implements _IssueModel {
  const _$_IssueModel(
      {required this.issueNumber,
      required this.issueTitle,
      required this.author,
      required this.open,
      required this.createdAt,
      required this.closedAt});

  @override
  final int issueNumber;
  @override
  final String issueTitle;
  @override
  final String author;
  @override
  final bool open;
  @override
  final DateTime createdAt;
  @override
  final DateTime? closedAt;

  @override
  String toString() {
    return 'IssueModel(issueNumber: $issueNumber, issueTitle: $issueTitle, author: $author, open: $open, createdAt: $createdAt, closedAt: $closedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssueModel &&
            (identical(other.issueNumber, issueNumber) ||
                other.issueNumber == issueNumber) &&
            (identical(other.issueTitle, issueTitle) ||
                other.issueTitle == issueTitle) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, issueNumber, issueTitle, author, open, createdAt, closedAt);

  @JsonKey(ignore: true)
  @override
  _$IssueModelCopyWith<_IssueModel> get copyWith =>
      __$IssueModelCopyWithImpl<_IssueModel>(this, _$identity);
}

abstract class _IssueModel implements IssueModel {
  const factory _IssueModel(
      {required int issueNumber,
      required String issueTitle,
      required String author,
      required bool open,
      required DateTime createdAt,
      required DateTime? closedAt}) = _$_IssueModel;

  @override
  int get issueNumber;
  @override
  String get issueTitle;
  @override
  String get author;
  @override
  bool get open;
  @override
  DateTime get createdAt;
  @override
  DateTime? get closedAt;
  @override
  @JsonKey(ignore: true)
  _$IssueModelCopyWith<_IssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
