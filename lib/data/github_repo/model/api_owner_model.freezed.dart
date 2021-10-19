// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_owner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiOwnerModel _$ApiOwnerModelFromJson(Map<String, dynamic> json) {
  return _ApiOwnerModel.fromJson(json);
}

/// @nodoc
class _$ApiOwnerModelTearOff {
  const _$ApiOwnerModelTearOff();

  _ApiOwnerModel call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'login') required String name,
      @JsonKey(name: 'avatar_url') required String avatarUrl}) {
    return _ApiOwnerModel(
      id: id,
      name: name,
      avatarUrl: avatarUrl,
    );
  }

  ApiOwnerModel fromJson(Map<String, Object?> json) {
    return ApiOwnerModel.fromJson(json);
  }
}

/// @nodoc
const $ApiOwnerModel = _$ApiOwnerModelTearOff();

/// @nodoc
mixin _$ApiOwnerModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiOwnerModelCopyWith<ApiOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiOwnerModelCopyWith<$Res> {
  factory $ApiOwnerModelCopyWith(
          ApiOwnerModel value, $Res Function(ApiOwnerModel) then) =
      _$ApiOwnerModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'login') String name,
      @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$ApiOwnerModelCopyWithImpl<$Res>
    implements $ApiOwnerModelCopyWith<$Res> {
  _$ApiOwnerModelCopyWithImpl(this._value, this._then);

  final ApiOwnerModel _value;
  // ignore: unused_field
  final $Res Function(ApiOwnerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiOwnerModelCopyWith<$Res>
    implements $ApiOwnerModelCopyWith<$Res> {
  factory _$ApiOwnerModelCopyWith(
          _ApiOwnerModel value, $Res Function(_ApiOwnerModel) then) =
      __$ApiOwnerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'login') String name,
      @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$ApiOwnerModelCopyWithImpl<$Res>
    extends _$ApiOwnerModelCopyWithImpl<$Res>
    implements _$ApiOwnerModelCopyWith<$Res> {
  __$ApiOwnerModelCopyWithImpl(
      _ApiOwnerModel _value, $Res Function(_ApiOwnerModel) _then)
      : super(_value, (v) => _then(v as _ApiOwnerModel));

  @override
  _ApiOwnerModel get _value => super._value as _ApiOwnerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_ApiOwnerModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ApiOwnerModel implements _ApiOwnerModel {
  const _$_ApiOwnerModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'login') required this.name,
      @JsonKey(name: 'avatar_url') required this.avatarUrl});

  factory _$_ApiOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiOwnerModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'login')
  final String name;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'ApiOwnerModel(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiOwnerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  @JsonKey(ignore: true)
  @override
  _$ApiOwnerModelCopyWith<_ApiOwnerModel> get copyWith =>
      __$ApiOwnerModelCopyWithImpl<_ApiOwnerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiOwnerModelToJson(this);
  }
}

abstract class _ApiOwnerModel implements ApiOwnerModel {
  const factory _ApiOwnerModel(
          {@JsonKey(name: 'id') required int id,
          @JsonKey(name: 'login') required String name,
          @JsonKey(name: 'avatar_url') required String avatarUrl}) =
      _$_ApiOwnerModel;

  factory _ApiOwnerModel.fromJson(Map<String, dynamic> json) =
      _$_ApiOwnerModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'login')
  String get name;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$ApiOwnerModelCopyWith<_ApiOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
