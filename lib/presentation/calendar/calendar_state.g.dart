// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarStateImpl _$$CalendarStateImplFromJson(Map<String, dynamic> json) =>
    _$CalendarStateImpl(
      calendars: (json['calendars'] as List<dynamic>?)
              ?.map((e) => FlightCalendar.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedDate: DateTime.parse(json['selectedDate'] as String),
      totalFlightTime: (json['totalFlightTime'] as num?)?.toDouble() ?? 0.0,
      isLoading: json['isLoading'] ?? false,
    );

Map<String, dynamic> _$$CalendarStateImplToJson(_$CalendarStateImpl instance) =>
    <String, dynamic>{
      'calendars': instance.calendars,
      'selectedDate': instance.selectedDate.toIso8601String(),
      'totalFlightTime': instance.totalFlightTime,
      'isLoading': instance.isLoading,
    };
