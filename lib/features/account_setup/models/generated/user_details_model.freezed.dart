// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailsModel {

 String? get phone; String? get gender; String? get birthday; String? get location; String? get religion; String? get department; String? get stream; String? get degree;
/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<UserDetailsModel> get copyWith => _$UserDetailsModelCopyWithImpl<UserDetailsModel>(this as UserDetailsModel, _$identity);

  /// Serializes this UserDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetailsModel&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.location, location) || other.location == location)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.department, department) || other.department == department)&&(identical(other.stream, stream) || other.stream == stream)&&(identical(other.degree, degree) || other.degree == degree));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,gender,birthday,location,religion,department,stream,degree);

@override
String toString() {
  return 'UserDetailsModel(phone: $phone, gender: $gender, birthday: $birthday, location: $location, religion: $religion, department: $department, stream: $stream, degree: $degree)';
}


}

/// @nodoc
abstract mixin class $UserDetailsModelCopyWith<$Res>  {
  factory $UserDetailsModelCopyWith(UserDetailsModel value, $Res Function(UserDetailsModel) _then) = _$UserDetailsModelCopyWithImpl;
@useResult
$Res call({
 String? phone, String? gender, String? birthday, String? location, String? religion, String? department, String? stream, String? degree
});




}
/// @nodoc
class _$UserDetailsModelCopyWithImpl<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  _$UserDetailsModelCopyWithImpl(this._self, this._then);

  final UserDetailsModel _self;
  final $Res Function(UserDetailsModel) _then;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = freezed,Object? gender = freezed,Object? birthday = freezed,Object? location = freezed,Object? religion = freezed,Object? department = freezed,Object? stream = freezed,Object? degree = freezed,}) {
  return _then(_self.copyWith(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,stream: freezed == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as String?,degree: freezed == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserDetailsModel implements UserDetailsModel {
   _UserDetailsModel({required this.phone, required this.gender, required this.birthday, required this.location, required this.religion, required this.department, required this.stream, required this.degree});
  factory _UserDetailsModel.fromJson(Map<String, dynamic> json) => _$UserDetailsModelFromJson(json);

@override final  String? phone;
@override final  String? gender;
@override final  String? birthday;
@override final  String? location;
@override final  String? religion;
@override final  String? department;
@override final  String? stream;
@override final  String? degree;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailsModelCopyWith<_UserDetailsModel> get copyWith => __$UserDetailsModelCopyWithImpl<_UserDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetailsModel&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.location, location) || other.location == location)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.department, department) || other.department == department)&&(identical(other.stream, stream) || other.stream == stream)&&(identical(other.degree, degree) || other.degree == degree));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,gender,birthday,location,religion,department,stream,degree);

@override
String toString() {
  return 'UserDetailsModel(phone: $phone, gender: $gender, birthday: $birthday, location: $location, religion: $religion, department: $department, stream: $stream, degree: $degree)';
}


}

/// @nodoc
abstract mixin class _$UserDetailsModelCopyWith<$Res> implements $UserDetailsModelCopyWith<$Res> {
  factory _$UserDetailsModelCopyWith(_UserDetailsModel value, $Res Function(_UserDetailsModel) _then) = __$UserDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String? phone, String? gender, String? birthday, String? location, String? religion, String? department, String? stream, String? degree
});




}
/// @nodoc
class __$UserDetailsModelCopyWithImpl<$Res>
    implements _$UserDetailsModelCopyWith<$Res> {
  __$UserDetailsModelCopyWithImpl(this._self, this._then);

  final _UserDetailsModel _self;
  final $Res Function(_UserDetailsModel) _then;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = freezed,Object? gender = freezed,Object? birthday = freezed,Object? location = freezed,Object? religion = freezed,Object? department = freezed,Object? stream = freezed,Object? degree = freezed,}) {
  return _then(_UserDetailsModel(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,stream: freezed == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as String?,degree: freezed == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
