// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../signup_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupReqModel {

 String? get name; String? get password; String? get email;
/// Create a copy of SignupReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupReqModelCopyWith<SignupReqModel> get copyWith => _$SignupReqModelCopyWithImpl<SignupReqModel>(this as SignupReqModel, _$identity);

  /// Serializes this SignupReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupReqModel&&(identical(other.name, name) || other.name == name)&&(identical(other.password, password) || other.password == password)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,password,email);

@override
String toString() {
  return 'SignupReqModel(name: $name, password: $password, email: $email)';
}


}

/// @nodoc
abstract mixin class $SignupReqModelCopyWith<$Res>  {
  factory $SignupReqModelCopyWith(SignupReqModel value, $Res Function(SignupReqModel) _then) = _$SignupReqModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? password, String? email
});




}
/// @nodoc
class _$SignupReqModelCopyWithImpl<$Res>
    implements $SignupReqModelCopyWith<$Res> {
  _$SignupReqModelCopyWithImpl(this._self, this._then);

  final SignupReqModel _self;
  final $Res Function(SignupReqModel) _then;

/// Create a copy of SignupReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? password = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignupReqModel implements SignupReqModel {
   _SignupReqModel({required this.name, required this.password, required this.email});
  factory _SignupReqModel.fromJson(Map<String, dynamic> json) => _$SignupReqModelFromJson(json);

@override final  String? name;
@override final  String? password;
@override final  String? email;

/// Create a copy of SignupReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupReqModelCopyWith<_SignupReqModel> get copyWith => __$SignupReqModelCopyWithImpl<_SignupReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupReqModel&&(identical(other.name, name) || other.name == name)&&(identical(other.password, password) || other.password == password)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,password,email);

@override
String toString() {
  return 'SignupReqModel(name: $name, password: $password, email: $email)';
}


}

/// @nodoc
abstract mixin class _$SignupReqModelCopyWith<$Res> implements $SignupReqModelCopyWith<$Res> {
  factory _$SignupReqModelCopyWith(_SignupReqModel value, $Res Function(_SignupReqModel) _then) = __$SignupReqModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? password, String? email
});




}
/// @nodoc
class __$SignupReqModelCopyWithImpl<$Res>
    implements _$SignupReqModelCopyWith<$Res> {
  __$SignupReqModelCopyWithImpl(this._self, this._then);

  final _SignupReqModel _self;
  final $Res Function(_SignupReqModel) _then;

/// Create a copy of SignupReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? password = freezed,Object? email = freezed,}) {
  return _then(_SignupReqModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
