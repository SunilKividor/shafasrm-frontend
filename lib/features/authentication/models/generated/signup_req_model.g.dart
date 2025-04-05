// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../signup_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupReqModel _$SignupReqModelFromJson(Map<String, dynamic> json) =>
    _SignupReqModel(
      name: json['name'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$SignupReqModelToJson(_SignupReqModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'email': instance.email,
    };
