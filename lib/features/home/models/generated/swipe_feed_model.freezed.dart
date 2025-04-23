// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../swipe_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwipeFeedModel {

 String? get id; String? get name; String? get phone; String? get gender; String? get birthday; String? get location; String? get religion; String? get department; String? get stream; String? get degree;@JsonKey(name: "photo_url") String? get photoUrl;
/// Create a copy of SwipeFeedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwipeFeedModelCopyWith<SwipeFeedModel> get copyWith => _$SwipeFeedModelCopyWithImpl<SwipeFeedModel>(this as SwipeFeedModel, _$identity);

  /// Serializes this SwipeFeedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwipeFeedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.location, location) || other.location == location)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.department, department) || other.department == department)&&(identical(other.stream, stream) || other.stream == stream)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,gender,birthday,location,religion,department,stream,degree,photoUrl);

@override
String toString() {
  return 'SwipeFeedModel(id: $id, name: $name, phone: $phone, gender: $gender, birthday: $birthday, location: $location, religion: $religion, department: $department, stream: $stream, degree: $degree, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class $SwipeFeedModelCopyWith<$Res>  {
  factory $SwipeFeedModelCopyWith(SwipeFeedModel value, $Res Function(SwipeFeedModel) _then) = _$SwipeFeedModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? phone, String? gender, String? birthday, String? location, String? religion, String? department, String? stream, String? degree,@JsonKey(name: "photo_url") String? photoUrl
});




}
/// @nodoc
class _$SwipeFeedModelCopyWithImpl<$Res>
    implements $SwipeFeedModelCopyWith<$Res> {
  _$SwipeFeedModelCopyWithImpl(this._self, this._then);

  final SwipeFeedModel _self;
  final $Res Function(SwipeFeedModel) _then;

/// Create a copy of SwipeFeedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? phone = freezed,Object? gender = freezed,Object? birthday = freezed,Object? location = freezed,Object? religion = freezed,Object? department = freezed,Object? stream = freezed,Object? degree = freezed,Object? photoUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,stream: freezed == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as String?,degree: freezed == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SwipeFeedModel implements SwipeFeedModel {
   _SwipeFeedModel({required this.id, required this.name, required this.phone, required this.gender, required this.birthday, required this.location, required this.religion, required this.department, required this.stream, required this.degree, @JsonKey(name: "photo_url") required this.photoUrl});
  factory _SwipeFeedModel.fromJson(Map<String, dynamic> json) => _$SwipeFeedModelFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? phone;
@override final  String? gender;
@override final  String? birthday;
@override final  String? location;
@override final  String? religion;
@override final  String? department;
@override final  String? stream;
@override final  String? degree;
@override@JsonKey(name: "photo_url") final  String? photoUrl;

/// Create a copy of SwipeFeedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwipeFeedModelCopyWith<_SwipeFeedModel> get copyWith => __$SwipeFeedModelCopyWithImpl<_SwipeFeedModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwipeFeedModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwipeFeedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.location, location) || other.location == location)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.department, department) || other.department == department)&&(identical(other.stream, stream) || other.stream == stream)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,gender,birthday,location,religion,department,stream,degree,photoUrl);

@override
String toString() {
  return 'SwipeFeedModel(id: $id, name: $name, phone: $phone, gender: $gender, birthday: $birthday, location: $location, religion: $religion, department: $department, stream: $stream, degree: $degree, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$SwipeFeedModelCopyWith<$Res> implements $SwipeFeedModelCopyWith<$Res> {
  factory _$SwipeFeedModelCopyWith(_SwipeFeedModel value, $Res Function(_SwipeFeedModel) _then) = __$SwipeFeedModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? phone, String? gender, String? birthday, String? location, String? religion, String? department, String? stream, String? degree,@JsonKey(name: "photo_url") String? photoUrl
});




}
/// @nodoc
class __$SwipeFeedModelCopyWithImpl<$Res>
    implements _$SwipeFeedModelCopyWith<$Res> {
  __$SwipeFeedModelCopyWithImpl(this._self, this._then);

  final _SwipeFeedModel _self;
  final $Res Function(_SwipeFeedModel) _then;

/// Create a copy of SwipeFeedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? phone = freezed,Object? gender = freezed,Object? birthday = freezed,Object? location = freezed,Object? religion = freezed,Object? department = freezed,Object? stream = freezed,Object? degree = freezed,Object? photoUrl = freezed,}) {
  return _then(_SwipeFeedModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,stream: freezed == stream ? _self.stream : stream // ignore: cast_nullable_to_non_nullable
as String?,degree: freezed == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
