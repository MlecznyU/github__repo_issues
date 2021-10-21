// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUserModel _$ApiUserModelFromJson(Map<String, dynamic> json) {
  return _ApiUserModel.fromJson(json);
}

/// @nodoc
class _$ApiUserModelTearOff {
  const _$ApiUserModelTearOff();

  _ApiUserModel call(
      {@JsonKey(name: 'login') required String userName,
      @JsonKey(name: 'avatar_url') required String userAvatar}) {
    return _ApiUserModel(
      userName: userName,
      userAvatar: userAvatar,
    );
  }

  ApiUserModel fromJson(Map<String, Object?> json) {
    return ApiUserModel.fromJson(json);
  }
}

/// @nodoc
const $ApiUserModel = _$ApiUserModelTearOff();

/// @nodoc
mixin _$ApiUserModel {
  @JsonKey(name: 'login')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get userAvatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserModelCopyWith<ApiUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserModelCopyWith<$Res> {
  factory $ApiUserModelCopyWith(
          ApiUserModel value, $Res Function(ApiUserModel) then) =
      _$ApiUserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'login') String userName,
      @JsonKey(name: 'avatar_url') String userAvatar});
}

/// @nodoc
class _$ApiUserModelCopyWithImpl<$Res> implements $ApiUserModelCopyWith<$Res> {
  _$ApiUserModelCopyWithImpl(this._value, this._then);

  final ApiUserModel _value;
  // ignore: unused_field
  final $Res Function(ApiUserModel) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatar: userAvatar == freezed
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiUserModelCopyWith<$Res>
    implements $ApiUserModelCopyWith<$Res> {
  factory _$ApiUserModelCopyWith(
          _ApiUserModel value, $Res Function(_ApiUserModel) then) =
      __$ApiUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'login') String userName,
      @JsonKey(name: 'avatar_url') String userAvatar});
}

/// @nodoc
class __$ApiUserModelCopyWithImpl<$Res> extends _$ApiUserModelCopyWithImpl<$Res>
    implements _$ApiUserModelCopyWith<$Res> {
  __$ApiUserModelCopyWithImpl(
      _ApiUserModel _value, $Res Function(_ApiUserModel) _then)
      : super(_value, (v) => _then(v as _ApiUserModel));

  @override
  _ApiUserModel get _value => super._value as _ApiUserModel;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userAvatar = freezed,
  }) {
    return _then(_ApiUserModel(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatar: userAvatar == freezed
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiUserModel implements _ApiUserModel {
  const _$_ApiUserModel(
      {@JsonKey(name: 'login') required this.userName,
      @JsonKey(name: 'avatar_url') required this.userAvatar});

  factory _$_ApiUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiUserModelFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String userName;
  @override
  @JsonKey(name: 'avatar_url')
  final String userAvatar;

  @override
  String toString() {
    return 'ApiUserModel(userName: $userName, userAvatar: $userAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiUserModel &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userAvatar, userAvatar) ||
                other.userAvatar == userAvatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, userAvatar);

  @JsonKey(ignore: true)
  @override
  _$ApiUserModelCopyWith<_ApiUserModel> get copyWith =>
      __$ApiUserModelCopyWithImpl<_ApiUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiUserModelToJson(this);
  }
}

abstract class _ApiUserModel implements ApiUserModel {
  const factory _ApiUserModel(
          {@JsonKey(name: 'login') required String userName,
          @JsonKey(name: 'avatar_url') required String userAvatar}) =
      _$_ApiUserModel;

  factory _ApiUserModel.fromJson(Map<String, dynamic> json) =
      _$_ApiUserModel.fromJson;

  @override
  @JsonKey(name: 'login')
  String get userName;
  @override
  @JsonKey(name: 'avatar_url')
  String get userAvatar;
  @override
  @JsonKey(ignore: true)
  _$ApiUserModelCopyWith<_ApiUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
