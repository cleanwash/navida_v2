// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthSuccessImpl _$$AuthSuccessImplFromJson(Map<String, dynamic> json) =>
    _$AuthSuccessImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthSuccessImplToJson(_$AuthSuccessImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthErrorImpl _$$AuthErrorImplFromJson(Map<String, dynamic> json) =>
    _$AuthErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthErrorImplToJson(_$AuthErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
