import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_details_model.g.dart';
part 'generated/user_details_model.freezed.dart';

@freezed
abstract class UserDetailsModel with _$UserDetailsModel {
  factory UserDetailsModel({
    required String? phone,
    required String? gender,
    required String? birthday,
    required String? location,
    required String? religion,
    required String? department,
    required String? stream,
    required String? degree,
  }) = _UserDetailsModel;

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsModelFromJson(json);
}