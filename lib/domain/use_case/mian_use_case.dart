import 'package:navida_v2/domain/repository/flight_calendart_repository.dart';

class MianUseCase {
  final FlightCalendarRepository _flightCalendarRepository;

  MianUseCase({
    required FlightCalendarRepository flightCalendarRepository,
  }) : _flightCalendarRepository = flightCalendarRepository;

  Future<double> execute() async {
    final flightRecords = await _flightCalendarRepository.getFlightCalendars();
    return flightRecords.fold<double>(
      0,
      (sum, record) => sum + record.totalFlightTime,
    );
  }
}
