import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/signup_req_model.g.dart';
part 'generated/signup_req_model.freezed.dart';

@freezed
abstract class SignupReqModel with _$SignupReqModel {
  factory SignupReqModel({
    required String? name,
    required String? password,
    required String? email,
  }) = _SignupReqModel;

  factory SignupReqModel.fromJson(Map<String, dynamic> json) =>
      _$SignupReqModelFromJson(json);
}