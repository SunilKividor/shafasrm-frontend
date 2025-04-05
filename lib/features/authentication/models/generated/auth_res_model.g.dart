// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../auth_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResModel _$AuthResModelFromJson(Map<String, dynamic> json) =>
    _AuthResModel(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$AuthResModelToJson(_AuthResModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
