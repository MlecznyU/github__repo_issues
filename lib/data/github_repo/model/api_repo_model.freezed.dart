// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_repo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiRepoModel _$ApiRepoModelFromJson(Map<String, dynamic> json) {
  return _ApiRepoModel.fromJson(json);
}

/// @nodoc
class _$ApiRepoModelTearOff {
  const _$ApiRepoModelTearOff();

  _ApiRepoModel call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'full_name') required String fullName,
      @JsonKey(name: 'owner') required ApiOwnerModel ownerModel}) {
    return _ApiRepoModel(
      id: id,
      name: name,
      fullName: fullName,
      ownerModel: ownerModel,
    );
  }

  ApiRepoModel fromJson(Map<String, Object?> json) {
    return ApiRepoModel.fromJson(json);
  }
}

/// @nodoc
const $ApiRepoModel = _$ApiRepoModelTearOff();

/// @nodoc
mixin _$ApiRepoModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  ApiOwnerModel get ownerModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiRepoModelCopyWith<ApiRepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRepoModelCopyWith<$Res> {
  factory $ApiRepoModelCopyWith(
          ApiRepoModel value, $Res Function(ApiRepoModel) then) =
      _$ApiRepoModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'owner') ApiOwnerModel ownerModel});

  $ApiOwnerModelCopyWith<$Res> get ownerModel;
}

/// @nodoc
class _$ApiRepoModelCopyWithImpl<$Res> implements $ApiRepoModelCopyWith<$Res> {
  _$ApiRepoModelCopyWithImpl(this._value, this._then);

  final ApiRepoModel _value;
  // ignore: unused_field
  final $Res Function(ApiRepoModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? ownerModel = freezed,
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
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerModel: ownerModel == freezed
          ? _value.ownerModel
          : ownerModel // ignore: cast_nullable_to_non_nullable
              as ApiOwnerModel,
    ));
  }

  @override
  $ApiOwnerModelCopyWith<$Res> get ownerModel {
    return $ApiOwnerModelCopyWith<$Res>(_value.ownerModel, (value) {
      return _then(_value.copyWith(ownerModel: value));
    });
  }
}

/// @nodoc
abstract class _$ApiRepoModelCopyWith<$Res>
    implements $ApiRepoModelCopyWith<$Res> {
  factory _$ApiRepoModelCopyWith(
          _ApiRepoModel value, $Res Function(_ApiRepoModel) then) =
      __$ApiRepoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'owner') ApiOwnerModel ownerModel});

  @override
  $ApiOwnerModelCopyWith<$Res> get ownerModel;
}

/// @nodoc
class __$ApiRepoModelCopyWithImpl<$Res> extends _$ApiRepoModelCopyWithImpl<$Res>
    implements _$ApiRepoModelCopyWith<$Res> {
  __$ApiRepoModelCopyWithImpl(
      _ApiRepoModel _value, $Res Function(_ApiRepoModel) _then)
      : super(_value, (v) => _then(v as _ApiRepoModel));

  @override
  _ApiRepoModel get _value => super._value as _ApiRepoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? ownerModel = freezed,
  }) {
    return _then(_ApiRepoModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerModel: ownerModel == freezed
          ? _value.ownerModel
          : ownerModel // ignore: cast_nullable_to_non_nullable
              as ApiOwnerModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiRepoModel implements _ApiRepoModel {
  const _$_ApiRepoModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'owner') required this.ownerModel});

  factory _$_ApiRepoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiRepoModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'owner')
  final ApiOwnerModel ownerModel;

  @override
  String toString() {
    return 'ApiRepoModel(id: $id, name: $name, fullName: $fullName, ownerModel: $ownerModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiRepoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.ownerModel, ownerModel) ||
                other.ownerModel == ownerModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, fullName, ownerModel);

  @JsonKey(ignore: true)
  @override
  _$ApiRepoModelCopyWith<_ApiRepoModel> get copyWith =>
      __$ApiRepoModelCopyWithImpl<_ApiRepoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiRepoModelToJson(this);
  }
}

abstract class _ApiRepoModel implements ApiRepoModel {
  const factory _ApiRepoModel(
          {@JsonKey(name: 'id') required int id,
          @JsonKey(name: 'name') required String name,
          @JsonKey(name: 'full_name') required String fullName,
          @JsonKey(name: 'owner') required ApiOwnerModel ownerModel}) =
      _$_ApiRepoModel;

  factory _ApiRepoModel.fromJson(Map<String, dynamic> json) =
      _$_ApiRepoModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'owner')
  ApiOwnerModel get ownerModel;
  @override
  @JsonKey(ignore: true)
  _$ApiRepoModelCopyWith<_ApiRepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
