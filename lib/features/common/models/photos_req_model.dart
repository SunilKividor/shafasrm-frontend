// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/photos_req_model.g.dart';
part 'generated/photos_req_model.freezed.dart';

@freezed
abstract class PhotosQueryParam with _$PhotosQueryParam {
  const factory PhotosQueryParam({required String contentType}) =
      _PhotosQueryParam;

  factory PhotosQueryParam.fromJson(Map<String, dynamic> json) =>
      _$PhotosQueryParamFromJson(json);
}

@freezed
abstract class PhotosPresignedUrlResModel with _$PhotosPresignedUrlResModel {
  factory PhotosPresignedUrlResModel({
    required String key,
    required String url,
  }) = _PhotosPresignedUrlResModel;

  factory PhotosPresignedUrlResModel.fromJson(Map<String, dynamic> json) =>
      _$PhotosPresignedUrlResModelFromJson(json);
}

@freezed
abstract class PhotoKeyStoreReqModel with _$PhotoKeyStoreReqModel {
  factory PhotoKeyStoreReqModel({
    @JsonKey(name: 'photo_key') required String photoKey,
    @JsonKey(name: 'is_primary') required bool isPrimary,
  }) = _PhotoKeyStoreReqModel;

  factory PhotoKeyStoreReqModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoKeyStoreReqModelFromJson(json);
}
