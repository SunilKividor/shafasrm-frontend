// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../photos_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhotosQueryParam _$PhotosQueryParamFromJson(Map<String, dynamic> json) =>
    _PhotosQueryParam(contentType: json['content_type'] as String);

Map<String, dynamic> _$PhotosQueryParamToJson(_PhotosQueryParam instance) =>
    <String, dynamic>{'content_type': instance.contentType};

_PhotosPresignedUrlResModel _$PhotosPresignedUrlResModelFromJson(
  Map<String, dynamic> json,
) => _PhotosPresignedUrlResModel(
  key: json['key'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$PhotosPresignedUrlResModelToJson(
  _PhotosPresignedUrlResModel instance,
) => <String, dynamic>{'key': instance.key, 'url': instance.url};

_PhotoKeyStoreReqModel _$PhotoKeyStoreReqModelFromJson(
  Map<String, dynamic> json,
) => _PhotoKeyStoreReqModel(
  photoKey: json['photo_key'] as String,
  isPrimary: json['is_primary'] as bool,
);

Map<String, dynamic> _$PhotoKeyStoreReqModelToJson(
  _PhotoKeyStoreReqModel instance,
) => <String, dynamic>{
  'photo_key': instance.photoKey,
  'is_primary': instance.isPrimary,
};
