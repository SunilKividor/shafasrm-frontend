// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_profile_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileFormModel {

@JsonKey(name: "party_move") int? get partyMove;@JsonKey(name: "flirt_rating") int? get flirtRating;@JsonKey(name: "shots_confess") int? get shotsConfess;@JsonKey(name: "guilty_song") int? get guiltySong;@JsonKey(name: "chaotic_love") int? get chaoticLove;
/// Create a copy of UserProfileFormModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileFormModelCopyWith<UserProfileFormModel> get copyWith => _$UserProfileFormModelCopyWithImpl<UserProfileFormModel>(this as UserProfileFormModel, _$identity);

  /// Serializes this UserProfileFormModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileFormModel&&(identical(other.partyMove, partyMove) || other.partyMove == partyMove)&&(identical(other.flirtRating, flirtRating) || other.flirtRating == flirtRating)&&(identical(other.shotsConfess, shotsConfess) || other.shotsConfess == shotsConfess)&&(identical(other.guiltySong, guiltySong) || other.guiltySong == guiltySong)&&(identical(other.chaoticLove, chaoticLove) || other.chaoticLove == chaoticLove));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,partyMove,flirtRating,shotsConfess,guiltySong,chaoticLove);

@override
String toString() {
  return 'UserProfileFormModel(partyMove: $partyMove, flirtRating: $flirtRating, shotsConfess: $shotsConfess, guiltySong: $guiltySong, chaoticLove: $chaoticLove)';
}


}

/// @nodoc
abstract mixin class $UserProfileFormModelCopyWith<$Res>  {
  factory $UserProfileFormModelCopyWith(UserProfileFormModel value, $Res Function(UserProfileFormModel) _then) = _$UserProfileFormModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "party_move") int? partyMove,@JsonKey(name: "flirt_rating") int? flirtRating,@JsonKey(name: "shots_confess") int? shotsConfess,@JsonKey(name: "guilty_song") int? guiltySong,@JsonKey(name: "chaotic_love") int? chaoticLove
});




}
/// @nodoc
class _$UserProfileFormModelCopyWithImpl<$Res>
    implements $UserProfileFormModelCopyWith<$Res> {
  _$UserProfileFormModelCopyWithImpl(this._self, this._then);

  final UserProfileFormModel _self;
  final $Res Function(UserProfileFormModel) _then;

/// Create a copy of UserProfileFormModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? partyMove = freezed,Object? flirtRating = freezed,Object? shotsConfess = freezed,Object? guiltySong = freezed,Object? chaoticLove = freezed,}) {
  return _then(_self.copyWith(
partyMove: freezed == partyMove ? _self.partyMove : partyMove // ignore: cast_nullable_to_non_nullable
as int?,flirtRating: freezed == flirtRating ? _self.flirtRating : flirtRating // ignore: cast_nullable_to_non_nullable
as int?,shotsConfess: freezed == shotsConfess ? _self.shotsConfess : shotsConfess // ignore: cast_nullable_to_non_nullable
as int?,guiltySong: freezed == guiltySong ? _self.guiltySong : guiltySong // ignore: cast_nullable_to_non_nullable
as int?,chaoticLove: freezed == chaoticLove ? _self.chaoticLove : chaoticLove // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserProfileFormModel implements UserProfileFormModel {
   _UserProfileFormModel({@JsonKey(name: "party_move") required this.partyMove, @JsonKey(name: "flirt_rating") required this.flirtRating, @JsonKey(name: "shots_confess") required this.shotsConfess, @JsonKey(name: "guilty_song") required this.guiltySong, @JsonKey(name: "chaotic_love") required this.chaoticLove});
  factory _UserProfileFormModel.fromJson(Map<String, dynamic> json) => _$UserProfileFormModelFromJson(json);

@override@JsonKey(name: "party_move") final  int? partyMove;
@override@JsonKey(name: "flirt_rating") final  int? flirtRating;
@override@JsonKey(name: "shots_confess") final  int? shotsConfess;
@override@JsonKey(name: "guilty_song") final  int? guiltySong;
@override@JsonKey(name: "chaotic_love") final  int? chaoticLove;

/// Create a copy of UserProfileFormModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileFormModelCopyWith<_UserProfileFormModel> get copyWith => __$UserProfileFormModelCopyWithImpl<_UserProfileFormModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileFormModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileFormModel&&(identical(other.partyMove, partyMove) || other.partyMove == partyMove)&&(identical(other.flirtRating, flirtRating) || other.flirtRating == flirtRating)&&(identical(other.shotsConfess, shotsConfess) || other.shotsConfess == shotsConfess)&&(identical(other.guiltySong, guiltySong) || other.guiltySong == guiltySong)&&(identical(other.chaoticLove, chaoticLove) || other.chaoticLove == chaoticLove));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,partyMove,flirtRating,shotsConfess,guiltySong,chaoticLove);

@override
String toString() {
  return 'UserProfileFormModel(partyMove: $partyMove, flirtRating: $flirtRating, shotsConfess: $shotsConfess, guiltySong: $guiltySong, chaoticLove: $chaoticLove)';
}


}

/// @nodoc
abstract mixin class _$UserProfileFormModelCopyWith<$Res> implements $UserProfileFormModelCopyWith<$Res> {
  factory _$UserProfileFormModelCopyWith(_UserProfileFormModel value, $Res Function(_UserProfileFormModel) _then) = __$UserProfileFormModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "party_move") int? partyMove,@JsonKey(name: "flirt_rating") int? flirtRating,@JsonKey(name: "shots_confess") int? shotsConfess,@JsonKey(name: "guilty_song") int? guiltySong,@JsonKey(name: "chaotic_love") int? chaoticLove
});




}
/// @nodoc
class __$UserProfileFormModelCopyWithImpl<$Res>
    implements _$UserProfileFormModelCopyWith<$Res> {
  __$UserProfileFormModelCopyWithImpl(this._self, this._then);

  final _UserProfileFormModel _self;
  final $Res Function(_UserProfileFormModel) _then;

/// Create a copy of UserProfileFormModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? partyMove = freezed,Object? flirtRating = freezed,Object? shotsConfess = freezed,Object? guiltySong = freezed,Object? chaoticLove = freezed,}) {
  return _then(_UserProfileFormModel(
partyMove: freezed == partyMove ? _self.partyMove : partyMove // ignore: cast_nullable_to_non_nullable
as int?,flirtRating: freezed == flirtRating ? _self.flirtRating : flirtRating // ignore: cast_nullable_to_non_nullable
as int?,shotsConfess: freezed == shotsConfess ? _self.shotsConfess : shotsConfess // ignore: cast_nullable_to_non_nullable
as int?,guiltySong: freezed == guiltySong ? _self.guiltySong : guiltySong // ignore: cast_nullable_to_non_nullable
as int?,chaoticLove: freezed == chaoticLove ? _self.chaoticLove : chaoticLove // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
