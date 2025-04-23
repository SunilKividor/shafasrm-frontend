// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_profile_form_model.g.dart';
part 'generated/user_profile_form_model.freezed.dart';

@freezed
abstract class UserProfileFormModel with _$UserProfileFormModel {
  factory UserProfileFormModel({
    @JsonKey(name: "party_move") required int? partyMove,
    @JsonKey(name: "flirt_rating") required int? flirtRating,
    @JsonKey(name: "shots_confess") required int? shotsConfess,
    @JsonKey(name: "guilty_song") required int? guiltySong,
    @JsonKey(name: "chaotic_love") required int? chaoticLove,
  }) = _UserProfileFormModel;

  factory UserProfileFormModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFormModelFromJson(json);
}
