// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarImpl _$$CalendarImplFromJson(Map<String, dynamic> json) =>
    _$CalendarImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      aircraftRegistration: json['aircraftRegistration'] as String,
      totalFlightTime: (json['totalFlightTime'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$CalendarImplToJson(_$CalendarImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'aircraftRegistration': instance.aircraftRegistration,
      'totalFlightTime': instance.totalFlightTime,
      'distance': instance.distance,
      'text': instance.text,
    };
