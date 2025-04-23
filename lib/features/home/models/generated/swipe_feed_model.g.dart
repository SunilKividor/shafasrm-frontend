// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../swipe_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SwipeFeedModel _$SwipeFeedModelFromJson(Map<String, dynamic> json) =>
    _SwipeFeedModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] as String?,
      location: json['location'] as String?,
      religion: json['religion'] as String?,
      department: json['department'] as String?,
      stream: json['stream'] as String?,
      degree: json['degree'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$SwipeFeedModelToJson(_SwipeFeedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'location': instance.location,
      'religion': instance.religion,
      'department': instance.department,
      'stream': instance.stream,
      'degree': instance.degree,
      'photo_url': instance.photoUrl,
    };
