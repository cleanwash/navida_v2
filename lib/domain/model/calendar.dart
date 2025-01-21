import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar.freezed.dart';
part 'calendar.g.dart';

@freezed
class Calendar with _$Calendar {
  factory Calendar({
    required DateTime createdAt, // 작성 시간
    required String aircraftRegistration, // 항공기 등록번호
    required double totalFlightTime, //총 비행 시간
    required double distance, //비행 거리
    required String text, //내용
  }) = _Calendar;

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);
}
