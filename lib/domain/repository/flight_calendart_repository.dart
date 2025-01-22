import 'package:navida_v2/domain/model/flight_calendar.dart';

abstract interface class FlightCalendarRepository {
  Future<List<FlightCalendar>> getFlightCalendars();
  Future<void> createFlightCalendar(FlightCalendar flightCalendar);
  Future<void> updateFlightCalendar(String id, FlightCalendar flightCalendar);
  Future<void> deleteFlightCalendar(String id);
}
