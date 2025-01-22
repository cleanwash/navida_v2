import 'package:navida_v2/domain/model/flight_calendar.dart';

class CalendarState {
  final List<FlightCalendar> calendars;
  final DateTime selectedDate;
  final double totalFlightTime;
  final bool isLoading;

  CalendarState({
    this.calendars = const [],
    required this.selectedDate,
    this.totalFlightTime = 0.0,
    this.isLoading = false,
  });

  CalendarState copyWith({
    List<FlightCalendar>? calendars,
    DateTime? selectedDate,
    double? totalFlightTime,
    bool? isLoading,
  }) {
    return CalendarState(
      calendars: calendars ?? this.calendars,
      selectedDate: selectedDate ?? this.selectedDate,
      totalFlightTime: totalFlightTime ?? this.totalFlightTime,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
