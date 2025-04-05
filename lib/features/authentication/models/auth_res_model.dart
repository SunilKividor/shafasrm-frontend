import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/auth_res_model.g.dart';
part 'generated/auth_res_model.freezed.dart';

@freezed
abstract class AuthResModel with _$AuthResModel {
  factory AuthResModel({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "refresh_token") required String refreshToken,
  }) = _AuthResModel;

  factory AuthResModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResModelFromJson(json);
}