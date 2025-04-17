// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../photos_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhotosQueryParam {

 String get contentType;
/// Create a copy of PhotosQueryParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotosQueryParamCopyWith<PhotosQueryParam> get copyWith => _$PhotosQueryParamCopyWithImpl<PhotosQueryParam>(this as PhotosQueryParam, _$identity);

  /// Serializes this PhotosQueryParam to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotosQueryParam&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentType);

@override
String toString() {
  return 'PhotosQueryParam(contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $PhotosQueryParamCopyWith<$Res>  {
  factory $PhotosQueryParamCopyWith(PhotosQueryParam value, $Res Function(PhotosQueryParam) _then) = _$PhotosQueryParamCopyWithImpl;
@useResult
$Res call({
 String contentType
});




}
/// @nodoc
class _$PhotosQueryParamCopyWithImpl<$Res>
    implements $PhotosQueryParamCopyWith<$Res> {
  _$PhotosQueryParamCopyWithImpl(this._self, this._then);

  final PhotosQueryParam _self;
  final $Res Function(PhotosQueryParam) _then;

/// Create a copy of PhotosQueryParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentType = null,}) {
  return _then(_self.copyWith(
contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PhotosQueryParam implements PhotosQueryParam {
  const _PhotosQueryParam({required this.contentType});
  factory _PhotosQueryParam.fromJson(Map<String, dynamic> json) => _$PhotosQueryParamFromJson(json);

@override final  String contentType;

/// Create a copy of PhotosQueryParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotosQueryParamCopyWith<_PhotosQueryParam> get copyWith => __$PhotosQueryParamCopyWithImpl<_PhotosQueryParam>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotosQueryParamToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotosQueryParam&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentType);

@override
String toString() {
  return 'PhotosQueryParam(contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$PhotosQueryParamCopyWith<$Res> implements $PhotosQueryParamCopyWith<$Res> {
  factory _$PhotosQueryParamCopyWith(_PhotosQueryParam value, $Res Function(_PhotosQueryParam) _then) = __$PhotosQueryParamCopyWithImpl;
@override @useResult
$Res call({
 String contentType
});




}
/// @nodoc
class __$PhotosQueryParamCopyWithImpl<$Res>
    implements _$PhotosQueryParamCopyWith<$Res> {
  __$PhotosQueryParamCopyWithImpl(this._self, this._then);

  final _PhotosQueryParam _self;
  final $Res Function(_PhotosQueryParam) _then;

/// Create a copy of PhotosQueryParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentType = null,}) {
  return _then(_PhotosQueryParam(
contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PhotosPresignedUrlResModel {

 String get key; String get url;
/// Create a copy of PhotosPresignedUrlResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotosPresignedUrlResModelCopyWith<PhotosPresignedUrlResModel> get copyWith => _$PhotosPresignedUrlResModelCopyWithImpl<PhotosPresignedUrlResModel>(this as PhotosPresignedUrlResModel, _$identity);

  /// Serializes this PhotosPresignedUrlResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotosPresignedUrlResModel&&(identical(other.key, key) || other.key == key)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,url);

@override
String toString() {
  return 'PhotosPresignedUrlResModel(key: $key, url: $url)';
}


}

/// @nodoc
abstract mixin class $PhotosPresignedUrlResModelCopyWith<$Res>  {
  factory $PhotosPresignedUrlResModelCopyWith(PhotosPresignedUrlResModel value, $Res Function(PhotosPresignedUrlResModel) _then) = _$PhotosPresignedUrlResModelCopyWithImpl;
@useResult
$Res call({
 String key, String url
});




}
/// @nodoc
class _$PhotosPresignedUrlResModelCopyWithImpl<$Res>
    implements $PhotosPresignedUrlResModelCopyWith<$Res> {
  _$PhotosPresignedUrlResModelCopyWithImpl(this._self, this._then);

  final PhotosPresignedUrlResModel _self;
  final $Res Function(PhotosPresignedUrlResModel) _then;

/// Create a copy of PhotosPresignedUrlResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? url = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PhotosPresignedUrlResModel implements PhotosPresignedUrlResModel {
   _PhotosPresignedUrlResModel({required this.key, required this.url});
  factory _PhotosPresignedUrlResModel.fromJson(Map<String, dynamic> json) => _$PhotosPresignedUrlResModelFromJson(json);

@override final  String key;
@override final  String url;

/// Create a copy of PhotosPresignedUrlResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotosPresignedUrlResModelCopyWith<_PhotosPresignedUrlResModel> get copyWith => __$PhotosPresignedUrlResModelCopyWithImpl<_PhotosPresignedUrlResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotosPresignedUrlResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotosPresignedUrlResModel&&(identical(other.key, key) || other.key == key)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,url);

@override
String toString() {
  return 'PhotosPresignedUrlResModel(key: $key, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PhotosPresignedUrlResModelCopyWith<$Res> implements $PhotosPresignedUrlResModelCopyWith<$Res> {
  factory _$PhotosPresignedUrlResModelCopyWith(_PhotosPresignedUrlResModel value, $Res Function(_PhotosPresignedUrlResModel) _then) = __$PhotosPresignedUrlResModelCopyWithImpl;
@override @useResult
$Res call({
 String key, String url
});




}
/// @nodoc
class __$PhotosPresignedUrlResModelCopyWithImpl<$Res>
    implements _$PhotosPresignedUrlResModelCopyWith<$Res> {
  __$PhotosPresignedUrlResModelCopyWithImpl(this._self, this._then);

  final _PhotosPresignedUrlResModel _self;
  final $Res Function(_PhotosPresignedUrlResModel) _then;

/// Create a copy of PhotosPresignedUrlResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? url = null,}) {
  return _then(_PhotosPresignedUrlResModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PhotoKeyStoreReqModel {

@JsonKey(name: 'photo_key') String get photoKey;@JsonKey(name: 'is_primary') bool get isPrimary;
/// Create a copy of PhotoKeyStoreReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoKeyStoreReqModelCopyWith<PhotoKeyStoreReqModel> get copyWith => _$PhotoKeyStoreReqModelCopyWithImpl<PhotoKeyStoreReqModel>(this as PhotoKeyStoreReqModel, _$identity);

  /// Serializes this PhotoKeyStoreReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoKeyStoreReqModel&&(identical(other.photoKey, photoKey) || other.photoKey == photoKey)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoKey,isPrimary);

@override
String toString() {
  return 'PhotoKeyStoreReqModel(photoKey: $photoKey, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class $PhotoKeyStoreReqModelCopyWith<$Res>  {
  factory $PhotoKeyStoreReqModelCopyWith(PhotoKeyStoreReqModel value, $Res Function(PhotoKeyStoreReqModel) _then) = _$PhotoKeyStoreReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'photo_key') String photoKey,@JsonKey(name: 'is_primary') bool isPrimary
});




}
/// @nodoc
class _$PhotoKeyStoreReqModelCopyWithImpl<$Res>
    implements $PhotoKeyStoreReqModelCopyWith<$Res> {
  _$PhotoKeyStoreReqModelCopyWithImpl(this._self, this._then);

  final PhotoKeyStoreReqModel _self;
  final $Res Function(PhotoKeyStoreReqModel) _then;

/// Create a copy of PhotoKeyStoreReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? photoKey = null,Object? isPrimary = null,}) {
  return _then(_self.copyWith(
photoKey: null == photoKey ? _self.photoKey : photoKey // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PhotoKeyStoreReqModel implements PhotoKeyStoreReqModel {
   _PhotoKeyStoreReqModel({@JsonKey(name: 'photo_key') required this.photoKey, @JsonKey(name: 'is_primary') required this.isPrimary});
  factory _PhotoKeyStoreReqModel.fromJson(Map<String, dynamic> json) => _$PhotoKeyStoreReqModelFromJson(json);

@override@JsonKey(name: 'photo_key') final  String photoKey;
@override@JsonKey(name: 'is_primary') final  bool isPrimary;

/// Create a copy of PhotoKeyStoreReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoKeyStoreReqModelCopyWith<_PhotoKeyStoreReqModel> get copyWith => __$PhotoKeyStoreReqModelCopyWithImpl<_PhotoKeyStoreReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotoKeyStoreReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotoKeyStoreReqModel&&(identical(other.photoKey, photoKey) || other.photoKey == photoKey)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoKey,isPrimary);

@override
String toString() {
  return 'PhotoKeyStoreReqModel(photoKey: $photoKey, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$PhotoKeyStoreReqModelCopyWith<$Res> implements $PhotoKeyStoreReqModelCopyWith<$Res> {
  factory _$PhotoKeyStoreReqModelCopyWith(_PhotoKeyStoreReqModel value, $Res Function(_PhotoKeyStoreReqModel) _then) = __$PhotoKeyStoreReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'photo_key') String photoKey,@JsonKey(name: 'is_primary') bool isPrimary
});




}
/// @nodoc
class __$PhotoKeyStoreReqModelCopyWithImpl<$Res>
    implements _$PhotoKeyStoreReqModelCopyWith<$Res> {
  __$PhotoKeyStoreReqModelCopyWithImpl(this._self, this._then);

  final _PhotoKeyStoreReqModel _self;
  final $Res Function(_PhotoKeyStoreReqModel) _then;

/// Create a copy of PhotoKeyStoreReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? photoKey = null,Object? isPrimary = null,}) {
  return _then(_PhotoKeyStoreReqModel(
photoKey: null == photoKey ? _self.photoKey : photoKey // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
