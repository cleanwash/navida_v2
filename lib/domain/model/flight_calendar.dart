import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_calendar.freezed.dart';
part 'flight_calendar.g.dart';

@freezed
class FlightCalendar with _$FlightCalendar {
  factory FlightCalendar({
    String? id, //파이어스토어 id 구분
    required DateTime createdAt, // 작성 시간
    required String aircraftRegistration, // 항공기 등록번호
    required double totalFlightTime, //총 비행 시간
    required double distance, //비행 거리
    required String history, //내용
  }) = _FlightCalendar;

  factory FlightCalendar.fromJson(Map<String, dynamic> json) =>
      _$FlightCalendarFromJson(json);
}
