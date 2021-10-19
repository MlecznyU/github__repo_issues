import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_owner_model.freezed.dart';
part 'api_owner_model.g.dart';

@freezed
class ApiOwnerModel with _$ApiOwnerModel {
  @JsonSerializable()
  const factory ApiOwnerModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'login') required String name,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _ApiOwnerModel;

  factory ApiOwnerModel.fromJson(Map<String, dynamic> json) => _$ApiOwnerModelFromJson(json);
}
