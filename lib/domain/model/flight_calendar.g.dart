// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlightCalendarImpl _$$FlightCalendarImplFromJson(Map<String, dynamic> json) =>
    _$FlightCalendarImpl(
      id: json['id'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      aircraftRegistration: json['aircraftRegistration'] as String,
      totalFlightTime: (json['totalFlightTime'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      history: json['history'] as String,
    );

Map<String, dynamic> _$$FlightCalendarImplToJson(
        _$FlightCalendarImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'aircraftRegistration': instance.aircraftRegistration,
      'totalFlightTime': instance.totalFlightTime,
      'distance': instance.distance,
      'history': instance.history,
    };
