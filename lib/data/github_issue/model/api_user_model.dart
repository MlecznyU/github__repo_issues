import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_user_model.freezed.dart';
part 'api_user_model.g.dart';

@freezed
class ApiUserModel with _$ApiUserModel {
  const factory ApiUserModel({
    @JsonKey(name: 'login') required String userName,
    @JsonKey(name: 'avatar_url') required String userAvatar,
  }) = _ApiUserModel;

  factory ApiUserModel.fromJson(Map<String, dynamic> json) => _$ApiUserModelFromJson(json);
}
