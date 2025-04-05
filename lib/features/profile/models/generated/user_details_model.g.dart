// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDetailsModel _$UserDetailsModelFromJson(Map<String, dynamic> json) =>
    _UserDetailsModel(
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] as String?,
      location: json['location'] as String?,
      religion: json['religion'] as String?,
      department: json['department'] as String?,
      stream: json['stream'] as String?,
      degree: json['degree'] as String?,
    );

Map<String, dynamic> _$UserDetailsModelToJson(_UserDetailsModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'location': instance.location,
      'religion': instance.religion,
      'department': instance.department,
      'stream': instance.stream,
      'degree': instance.degree,
    };
