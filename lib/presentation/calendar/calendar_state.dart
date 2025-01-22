import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navida_v2/domain/model/flight_calendar.dart';

part 'calendar_state.freezed.dart';
part 'calendar_state.g.dart';

@freezed
class CalendarState with _$CalendarState {
  factory CalendarState({
    @Default([]) List<FlightCalendar> calendars,
    required DateTime selectedDate,
    @Default(0.0) double totalFlightTime,
    @Default(false) isLoading,
  }) = _CalendarState;

  factory CalendarState.fromJson(Map<String, dynamic> json) =>
      _$CalendarStateFromJson(json);
}
