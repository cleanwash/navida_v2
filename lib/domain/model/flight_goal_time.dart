import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_goal_time.freezed.dart';
part 'flight_goal_time.g.dart';

@freezed
class FlightGoalTime with _$FlightGoalTime {
  factory FlightGoalTime({
    required String logoPath,
    required String airlineName,
    required String flightHours,
  }) = _FlightGoalTime;

  factory FlightGoalTime.fromJson(Map<String, dynamic> json) =>
      _$FlightGoalTimeFromJson(json);
}
