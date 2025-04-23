// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_profile_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileFormModel _$UserProfileFormModelFromJson(
  Map<String, dynamic> json,
) => _UserProfileFormModel(
  partyMove: (json['party_move'] as num?)?.toInt(),
  flirtRating: (json['flirt_rating'] as num?)?.toInt(),
  shotsConfess: (json['shots_confess'] as num?)?.toInt(),
  guiltySong: (json['guilty_song'] as num?)?.toInt(),
  chaoticLove: (json['chaotic_love'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserProfileFormModelToJson(
  _UserProfileFormModel instance,
) => <String, dynamic>{
  'party_move': instance.partyMove,
  'flirt_rating': instance.flirtRating,
  'shots_confess': instance.shotsConfess,
  'guilty_song': instance.guiltySong,
  'chaotic_love': instance.chaoticLove,
};
