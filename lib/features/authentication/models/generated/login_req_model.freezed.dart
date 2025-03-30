// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../login_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginReqModel {

 String? get username; String? get password;
/// Create a copy of LoginReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginReqModelCopyWith<LoginReqModel> get copyWith => _$LoginReqModelCopyWithImpl<LoginReqModel>(this as LoginReqModel, _$identity);

  /// Serializes this LoginReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginReqModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginReqModel(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginReqModelCopyWith<$Res>  {
  factory $LoginReqModelCopyWith(LoginReqModel value, $Res Function(LoginReqModel) _then) = _$LoginReqModelCopyWithImpl;
@useResult
$Res call({
 String? username, String? password
});




}
/// @nodoc
class _$LoginReqModelCopyWithImpl<$Res>
    implements $LoginReqModelCopyWith<$Res> {
  _$LoginReqModelCopyWithImpl(this._self, this._then);

  final LoginReqModel _self;
  final $Res Function(LoginReqModel) _then;

/// Create a copy of LoginReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = freezed,Object? password = freezed,}) {
  return _then(_self.copyWith(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LoginReqModel implements LoginReqModel {
   _LoginReqModel({required this.username, required this.password});
  factory _LoginReqModel.fromJson(Map<String, dynamic> json) => _$LoginReqModelFromJson(json);

@override final  String? username;
@override final  String? password;

/// Create a copy of LoginReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginReqModelCopyWith<_LoginReqModel> get copyWith => __$LoginReqModelCopyWithImpl<_LoginReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginReqModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginReqModel(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginReqModelCopyWith<$Res> implements $LoginReqModelCopyWith<$Res> {
  factory _$LoginReqModelCopyWith(_LoginReqModel value, $Res Function(_LoginReqModel) _then) = __$LoginReqModelCopyWithImpl;
@override @useResult
$Res call({
 String? username, String? password
});




}
/// @nodoc
class __$LoginReqModelCopyWithImpl<$Res>
    implements _$LoginReqModelCopyWith<$Res> {
  __$LoginReqModelCopyWithImpl(this._self, this._then);

  final _LoginReqModel _self;
  final $Res Function(_LoginReqModel) _then;

/// Create a copy of LoginReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = freezed,Object? password = freezed,}) {
  return _then(_LoginReqModel(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
