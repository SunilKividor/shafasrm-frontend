// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/swipe_feed_model.g.dart';
part 'generated/swipe_feed_model.freezed.dart';

@freezed
abstract class SwipeFeedModel with _$SwipeFeedModel {
  factory SwipeFeedModel({
    required String? id,
    required String? name,
    required String? phone,
    required String? gender,
    required String? birthday,
    required String? location,
    required String? religion,
    required String? department,
    required String? stream,
    required String? degree,
    @JsonKey(name: "photo_url") required String? photoUrl,
  }) = _SwipeFeedModel;

  factory SwipeFeedModel.fromJson(Map<String, dynamic> json) =>
      _$SwipeFeedModelFromJson(json);
}
