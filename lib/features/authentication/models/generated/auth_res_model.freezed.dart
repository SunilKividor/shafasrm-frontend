// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../auth_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResModel {

@JsonKey(name: "access_token") String get accessToken;@JsonKey(name: "refresh_token") String get refreshToken;
/// Create a copy of AuthResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResModelCopyWith<AuthResModel> get copyWith => _$AuthResModelCopyWithImpl<AuthResModel>(this as AuthResModel, _$identity);

  /// Serializes this AuthResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken);

@override
String toString() {
  return 'AuthResModel(accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $AuthResModelCopyWith<$Res>  {
  factory $AuthResModelCopyWith(AuthResModel value, $Res Function(AuthResModel) _then) = _$AuthResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "refresh_token") String refreshToken
});




}
/// @nodoc
class _$AuthResModelCopyWithImpl<$Res>
    implements $AuthResModelCopyWith<$Res> {
  _$AuthResModelCopyWithImpl(this._self, this._then);

  final AuthResModel _self;
  final $Res Function(AuthResModel) _then;

/// Create a copy of AuthResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthResModel implements AuthResModel {
   _AuthResModel({@JsonKey(name: "access_token") required this.accessToken, @JsonKey(name: "refresh_token") required this.refreshToken});
  factory _AuthResModel.fromJson(Map<String, dynamic> json) => _$AuthResModelFromJson(json);

@override@JsonKey(name: "access_token") final  String accessToken;
@override@JsonKey(name: "refresh_token") final  String refreshToken;

/// Create a copy of AuthResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResModelCopyWith<_AuthResModel> get copyWith => __$AuthResModelCopyWithImpl<_AuthResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken);

@override
String toString() {
  return 'AuthResModel(accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$AuthResModelCopyWith<$Res> implements $AuthResModelCopyWith<$Res> {
  factory _$AuthResModelCopyWith(_AuthResModel value, $Res Function(_AuthResModel) _then) = __$AuthResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "refresh_token") String refreshToken
});




}
/// @nodoc
class __$AuthResModelCopyWithImpl<$Res>
    implements _$AuthResModelCopyWith<$Res> {
  __$AuthResModelCopyWithImpl(this._self, this._then);

  final _AuthResModel _self;
  final $Res Function(_AuthResModel) _then;

/// Create a copy of AuthResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,}) {
  return _then(_AuthResModel(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
