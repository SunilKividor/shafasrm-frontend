import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/login_req_model.g.dart';
part 'generated/login_req_model.freezed.dart';

@freezed
abstract class LoginReqModel with _$LoginReqModel {
  factory LoginReqModel({
    required String? username,
    required String? password,
  }) = _LoginReqModel;

  factory LoginReqModel.fromJson(Map<String, dynamic> json) =>
      _$LoginReqModelFromJson(json);
}